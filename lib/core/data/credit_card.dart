import 'package:credit_card_reader/core/constants/constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

part 'credit_card.freezed.dart';
part 'credit_card.g.dart';

@freezed
@Collection(ignore: {'copyWith'})
class CreditCardState with _$CreditCardState {
  const CreditCardState._();

  @JsonSerializable()
  const factory CreditCardState({
    @Index(unique: true, replace: true) String? card_number,
    @enumerated @Default(CardType.unknown) CardType cardType,
    String? cvv,
    String? ownerName,
    String? expiryDate,
    String? issuingCountry,
  }) = _CreditCardState;
  final Id id = Isar.autoIncrement;

  factory CreditCardState.fromJson(Map<String, dynamic> json) =>
      _$CreditCardStateFromJson(json);
}
