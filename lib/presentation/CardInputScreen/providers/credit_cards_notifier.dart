import 'package:credit_card_reader/core/data/credit_card.dart';
import 'package:credit_card_reader/core/data/mock_cards.dart';
import 'package:credit_card_reader/core/repository/local_credit_card_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CreditCardStateNotifier extends StateNotifier<List<CreditCardState>> {
  final LocalCreditCardRepository _repository = LocalCreditCardRepository();
  final StateNotifierProviderRef<Object?, Object?> ref;

  CreditCardStateNotifier(this.ref) : super([]) {
    loadCreditCards();
  }

  Future<void> loadCreditCards() async {
    state = await _repository.getCreditCards();
    if (state.isEmpty || state.length == 0) {
      List<CreditCardState> mockCards =
          ref.read(mockCreditCardStateNotifierProvider.notifier).state;
      state.addAll(mockCards);
    }
  }
}

final creditCardsStateNotifier = StateNotifierProvider((ref) {
  return CreditCardStateNotifier(ref);
});
