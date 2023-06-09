import 'package:credit_card_reader/core/constants/constants.dart';
import 'package:credit_card_reader/core/data/credit_card.dart';
import 'package:credit_card_reader/core/data/credit_cards.dart';
import 'package:credit_card_reader/core/repository/local_credit_card_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';

final creditCardNotifierProvider = StateNotifierProvider.autoDispose<
    CreditCardFormStateNotifier, CreditCardState>((ref) {
  //final isar = ref.watch(isarProvider);
  return CreditCardFormStateNotifier();
});

class CreditCardFormStateNotifier extends StateNotifier<CreditCardState> {
  CreditCardFormStateNotifier() : super(CreditCardState());
  final LocalCreditCardRepository _repository = LocalCreditCardRepository();

  void setCardNumber(String cardNumber) {
    _setCardtype(cardNumber);
    state = state.copyWith(
      card_number: cardNumber,
    );
  }

  void setNameOnCard(String name) {
    state = state.copyWith(
      ownerName: name,
    );
  }

  void setExpiryDate(List<int> date) {
    state = state.copyWith(
      expiryDate: date,
    );
  }

  void setCvv(String cvv) {
    state = state.copyWith(
      cvv: cvv,
    );
  }

  Future<void> saveCreditCard() async {
    state = state.copyWith(
        card_number: state.card_number,
        cardType: state.cardType,
        cvv: state.cvv,
        ownerName: state.ownerName,
        expiryDate: state.expiryDate);
    _repository.saveCreditCard(CreditCardsLocalDB()..creditCard = state);
  }

  void _setCardtype(String cardNumber) {
    if (cardNumber.startsWith(new RegExp(
        r'((5[1-5])|(222[1-9]|22[3-9][0-9]|2[3-6][0-9]{2}|27[01][0-9]|2720))'))) {
      state = state.copyWith(
        cardType: CardType.MasterCard,
      );
    } else if (cardNumber.startsWith(new RegExp(r'[4]'))) {
      state = state.copyWith(
        cardType: CardType.Visa,
      );
    } else if (cardNumber.startsWith(new RegExp(r'[3]'))) {
      state = state.copyWith(
        cardType: CardType.Amex,
      );
    } else {
      state = state.copyWith(
        cardType: CardType.unknown,
      );
    }
  }
}
