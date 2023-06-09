import 'package:credit_card_reader/core/data/credit_cards.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class LocalCreditCardRepository {
  late Future<Isar> _isar;
  LocalCreditCardRepository() {
    _isar = openLocalDB();
  }

  Future<List<CreditCardsLocalDB>> getCreditCards() async {
    final localDb = await _isar;
    final creditCards = await localDb.creditCardsLocalDBs.where().findAll();
    return creditCards;
  }

  Future<void> saveCreditCard(CreditCardsLocalDB creditCard) async {
    final localDb = await _isar;
    localDb.writeTxnSync(() => localDb.creditCardsLocalDBs.putSync(creditCard));
  }

  Future<Isar> openLocalDB() async {
    final dir = await getApplicationDocumentsDirectory();
    if (Isar.instanceNames.isEmpty) {
      return await Isar.open([CreditCardsLocalDBSchema],
          inspector: true, directory: dir.path);
    }
    return Future.value(Isar.getInstance());
  }
}
