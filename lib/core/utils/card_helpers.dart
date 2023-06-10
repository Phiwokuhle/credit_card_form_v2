import 'package:credit_card_reader/core/constants/constants.dart';

class CardHelper {
  static String? getCardType(String cardNumber) {
    if (cardNumber.startsWith(new RegExp(
        r'((5[1-5])|(222[1-9]|22[3-9][0-9]|2[3-6][0-9]{2}|27[01][0-9]|2720))'))) {
      return CardType.MasterCard.iconPath;
    } else if (cardNumber.startsWith(new RegExp(r'[4]'))) {
      return CardType.Visa.iconPath;
    } else if (cardNumber.startsWith(new RegExp(r'[3]'))) {
      return CardType.Amex.iconPath;
    } else {
      return CardType.unknown.iconPath;
    }
  }
}
