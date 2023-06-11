// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credit_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreditCardState _$CreditCardStateFromJson(Map<String, dynamic> json) {
  return _CreditCardState.fromJson(json);
}

/// @nodoc
mixin _$CreditCardState {
  @Index(unique: true, replace: true)
  String? get card_number => throw _privateConstructorUsedError;
  @enumerated
  CardType get cardType => throw _privateConstructorUsedError;
  String? get cvv => throw _privateConstructorUsedError;
  String? get ownerName => throw _privateConstructorUsedError;
  String? get expiryDate => throw _privateConstructorUsedError;
  String? get issuingCountry => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreditCardStateCopyWith<CreditCardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreditCardStateCopyWith<$Res> {
  factory $CreditCardStateCopyWith(
          CreditCardState value, $Res Function(CreditCardState) then) =
      _$CreditCardStateCopyWithImpl<$Res, CreditCardState>;
  @useResult
  $Res call(
      {@Index(unique: true, replace: true) String? card_number,
      @enumerated CardType cardType,
      String? cvv,
      String? ownerName,
      String? expiryDate,
      String? issuingCountry});
}

/// @nodoc
class _$CreditCardStateCopyWithImpl<$Res, $Val extends CreditCardState>
    implements $CreditCardStateCopyWith<$Res> {
  _$CreditCardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? card_number = freezed,
    Object? cardType = null,
    Object? cvv = freezed,
    Object? ownerName = freezed,
    Object? expiryDate = freezed,
    Object? issuingCountry = freezed,
  }) {
    return _then(_value.copyWith(
      card_number: freezed == card_number
          ? _value.card_number
          : card_number // ignore: cast_nullable_to_non_nullable
              as String?,
      cardType: null == cardType
          ? _value.cardType
          : cardType // ignore: cast_nullable_to_non_nullable
              as CardType,
      cvv: freezed == cvv
          ? _value.cvv
          : cvv // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerName: freezed == ownerName
          ? _value.ownerName
          : ownerName // ignore: cast_nullable_to_non_nullable
              as String?,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as String?,
      issuingCountry: freezed == issuingCountry
          ? _value.issuingCountry
          : issuingCountry // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreditCardStateCopyWith<$Res>
    implements $CreditCardStateCopyWith<$Res> {
  factory _$$_CreditCardStateCopyWith(
          _$_CreditCardState value, $Res Function(_$_CreditCardState) then) =
      __$$_CreditCardStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@Index(unique: true, replace: true) String? card_number,
      @enumerated CardType cardType,
      String? cvv,
      String? ownerName,
      String? expiryDate,
      String? issuingCountry});
}

/// @nodoc
class __$$_CreditCardStateCopyWithImpl<$Res>
    extends _$CreditCardStateCopyWithImpl<$Res, _$_CreditCardState>
    implements _$$_CreditCardStateCopyWith<$Res> {
  __$$_CreditCardStateCopyWithImpl(
      _$_CreditCardState _value, $Res Function(_$_CreditCardState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? card_number = freezed,
    Object? cardType = null,
    Object? cvv = freezed,
    Object? ownerName = freezed,
    Object? expiryDate = freezed,
    Object? issuingCountry = freezed,
  }) {
    return _then(_$_CreditCardState(
      card_number: freezed == card_number
          ? _value.card_number
          : card_number // ignore: cast_nullable_to_non_nullable
              as String?,
      cardType: null == cardType
          ? _value.cardType
          : cardType // ignore: cast_nullable_to_non_nullable
              as CardType,
      cvv: freezed == cvv
          ? _value.cvv
          : cvv // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerName: freezed == ownerName
          ? _value.ownerName
          : ownerName // ignore: cast_nullable_to_non_nullable
              as String?,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as String?,
      issuingCountry: freezed == issuingCountry
          ? _value.issuingCountry
          : issuingCountry // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_CreditCardState extends _CreditCardState {
  const _$_CreditCardState(
      {@Index(unique: true, replace: true) this.card_number,
      @enumerated this.cardType = CardType.unknown,
      this.cvv,
      this.ownerName,
      this.expiryDate,
      this.issuingCountry})
      : super._();

  factory _$_CreditCardState.fromJson(Map<String, dynamic> json) =>
      _$$_CreditCardStateFromJson(json);

  @override
  @Index(unique: true, replace: true)
  final String? card_number;
  @override
  @JsonKey()
  @enumerated
  final CardType cardType;
  @override
  final String? cvv;
  @override
  final String? ownerName;
  @override
  final String? expiryDate;
  @override
  final String? issuingCountry;

  @override
  String toString() {
    return 'CreditCardState(card_number: $card_number, cardType: $cardType, cvv: $cvv, ownerName: $ownerName, expiryDate: $expiryDate, issuingCountry: $issuingCountry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreditCardState &&
            (identical(other.card_number, card_number) ||
                other.card_number == card_number) &&
            (identical(other.cardType, cardType) ||
                other.cardType == cardType) &&
            (identical(other.cvv, cvv) || other.cvv == cvv) &&
            (identical(other.ownerName, ownerName) ||
                other.ownerName == ownerName) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            (identical(other.issuingCountry, issuingCountry) ||
                other.issuingCountry == issuingCountry));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, card_number, cardType, cvv,
      ownerName, expiryDate, issuingCountry);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreditCardStateCopyWith<_$_CreditCardState> get copyWith =>
      __$$_CreditCardStateCopyWithImpl<_$_CreditCardState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreditCardStateToJson(
      this,
    );
  }
}

abstract class _CreditCardState extends CreditCardState {
  const factory _CreditCardState(
      {@Index(unique: true, replace: true) final String? card_number,
      @enumerated final CardType cardType,
      final String? cvv,
      final String? ownerName,
      final String? expiryDate,
      final String? issuingCountry}) = _$_CreditCardState;
  const _CreditCardState._() : super._();

  factory _CreditCardState.fromJson(Map<String, dynamic> json) =
      _$_CreditCardState.fromJson;

  @override
  @Index(unique: true, replace: true)
  String? get card_number;
  @override
  @enumerated
  CardType get cardType;
  @override
  String? get cvv;
  @override
  String? get ownerName;
  @override
  String? get expiryDate;
  @override
  String? get issuingCountry;
  @override
  @JsonKey(ignore: true)
  _$$_CreditCardStateCopyWith<_$_CreditCardState> get copyWith =>
      throw _privateConstructorUsedError;
}
