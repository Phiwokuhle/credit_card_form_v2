import 'package:credit_card_reader/core/utils/image_constant.dart';

enum CardType {
  MasterCard(title: " Master Card", iconPath: ImageConstants.ic_mastercard),
  Visa(title: "visa", iconPath: ImageConstants.ic_visa),
  Amex(title: "American Express", iconPath: ImageConstants.ic_amex),
  unknown(title: "unknown card type", iconPath: ImageConstants.ic_card_unknown);

  const CardType({
    this.iconPath,
    this.title,
  });

  final String? iconPath;
  final String? title;
}
