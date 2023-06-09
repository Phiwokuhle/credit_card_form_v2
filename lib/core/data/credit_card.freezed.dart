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

/// @nodoc
mixin _$CreditCardState {
  String? get card_number => throw _privateConstructorUsedError;
  CardType get cardType => throw _privateConstructorUsedError;
  String? get cvv => throw _privateConstructorUsedError;
  String? get ownerName => throw _privateConstructorUsedError;
  List<int>? get expiryDate => throw _privateConstructorUsedError;

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
      {String? card_number,
      CardType cardType,
      String? cvv,
      String? ownerName,
      List<int>? expiryDate});
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
              as List<int>?,
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
      {String? card_number,
      CardType cardType,
      String? cvv,
      String? ownerName,
      List<int>? expiryDate});
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
          ? _value._expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc

class _$_CreditCardState implements _CreditCardState {
  const _$_CreditCardState(
      {this.card_number,
      this.cardType = CardType.unknown,
      this.cvv,
      this.ownerName,
      final List<int>? expiryDate})
      : _expiryDate = expiryDate;

  @override
  final String? card_number;
  @override
  @JsonKey()
  final CardType cardType;
  @override
  final String? cvv;
  @override
  final String? ownerName;
  final List<int>? _expiryDate;
  @override
  List<int>? get expiryDate {
    final value = _expiryDate;
    if (value == null) return null;
    if (_expiryDate is EqualUnmodifiableListView) return _expiryDate;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CreditCardState(card_number: $card_number, cardType: $cardType, cvv: $cvv, ownerName: $ownerName, expiryDate: $expiryDate)';
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
            const DeepCollectionEquality()
                .equals(other._expiryDate, _expiryDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, card_number, cardType, cvv,
      ownerName, const DeepCollectionEquality().hash(_expiryDate));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreditCardStateCopyWith<_$_CreditCardState> get copyWith =>
      __$$_CreditCardStateCopyWithImpl<_$_CreditCardState>(this, _$identity);
}

abstract class _CreditCardState implements CreditCardState {
  const factory _CreditCardState(
      {final String? card_number,
      final CardType cardType,
      final String? cvv,
      final String? ownerName,
      final List<int>? expiryDate}) = _$_CreditCardState;

  @override
  String? get card_number;
  @override
  CardType get cardType;
  @override
  String? get cvv;
  @override
  String? get ownerName;
  @override
  List<int>? get expiryDate;
  @override
  @JsonKey(ignore: true)
  _$$_CreditCardStateCopyWith<_$_CreditCardState> get copyWith =>
      throw _privateConstructorUsedError;
}
