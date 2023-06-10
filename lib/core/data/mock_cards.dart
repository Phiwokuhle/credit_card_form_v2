import 'package:credit_card_reader/core/constants/constants.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'credit_card.dart';

List<CreditCardState> dummyCreditCards = [
  CreditCardState(
    card_number: '1234 5678 9876 5432',
    cardType: CardType.Visa,
    cvv: '1234',
    ownerName: 'Card holder',
    expiryDate: "12/99", // Month, Year
  ),
  CreditCardState(
    card_number: '4574 4874 0535 1567',
    cardType: CardType.MasterCard,
    cvv: '456',
    ownerName: 'Jane Smith',
    expiryDate: "09/20", // Month, Year
  ),
  CreditCardState(
    card_number: '9876 5432 1098 7654',
    cardType: CardType.MasterCard,
    cvv: '456',
    ownerName: 'Jane Smith',
    expiryDate: "10/3", // Month, Year
  ),
  CreditCardState(
    card_number: '9876 5432 1098 7654',
    cardType: CardType.MasterCard,
    cvv: '123',
    ownerName: 'lee M',
    expiryDate: "03/29", // Month, Year
  ),
];

final mockCreditCardStateNotifierProvider =
    StateNotifierProvider<CreditCardStateNotifier, List<CreditCardState>>(
  (ref) => CreditCardStateNotifier(),
);

class CreditCardStateNotifier extends StateNotifier<List<CreditCardState>> {
  CreditCardStateNotifier() : super(dummyCreditCards);
}
