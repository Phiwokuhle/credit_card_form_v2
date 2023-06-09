import 'package:credit_card_reader/core/constants/constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'credit_card.freezed.dart';

@freezed
class CreditCardState with _$CreditCardState {
  const factory CreditCardState({
    String? card_number,
    @Default(CardType.unknown) CardType cardType,
    String? cvv,
    String? ownerName,
    List<int>? expiryDate,
  }) = _CreditCardState;
}
