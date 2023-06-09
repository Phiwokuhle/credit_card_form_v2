import 'package:credit_card_reader/core/data/credit_cards.dart';
import 'package:credit_card_reader/core/repository/local_credit_card_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CreditCardStateNotifier extends StateNotifier<List<CreditCardsLocalDB>> {
  final LocalCreditCardRepository _repository = LocalCreditCardRepository();

  CreditCardStateNotifier() : super([]);

  Future<void> loadCreditCards() async {
    final state = await _repository.getCreditCards();
  }
}
final creditCardsStateNotifier = StateNotifierProvider((ref) {
  return CreditCardStateNotifier();
});
