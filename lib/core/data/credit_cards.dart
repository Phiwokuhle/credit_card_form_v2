import 'package:isar/isar.dart';

import 'credit_card.dart';


part 'credit_cards.g.dart';

@Collection()
class CreditCardsLocalDB {
  Id id = Isar.autoIncrement;
  @ignore
  late CreditCardState creditCard;
  }



