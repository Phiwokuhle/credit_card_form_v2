// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credit_card.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCreditCardStateCollection on Isar {
  IsarCollection<CreditCardState> get creditCardStates => this.collection();
}

const CreditCardStateSchema = CollectionSchema(
  name: r'CreditCardState',
  id: 8759016700004885371,
  properties: {
    r'cardType': PropertySchema(
      id: 0,
      name: r'cardType',
      type: IsarType.byte,
      enumMap: _CreditCardStatecardTypeEnumValueMap,
    ),
    r'card_number': PropertySchema(
      id: 1,
      name: r'card_number',
      type: IsarType.string,
    ),
    r'cvv': PropertySchema(
      id: 2,
      name: r'cvv',
      type: IsarType.string,
    ),
    r'expiryDate': PropertySchema(
      id: 3,
      name: r'expiryDate',
      type: IsarType.string,
    ),
    r'ownerName': PropertySchema(
      id: 4,
      name: r'ownerName',
      type: IsarType.string,
    )
  },
  estimateSize: _creditCardStateEstimateSize,
  serialize: _creditCardStateSerialize,
  deserialize: _creditCardStateDeserialize,
  deserializeProp: _creditCardStateDeserializeProp,
  idName: r'id',
  indexes: {
    r'card_number': IndexSchema(
      id: -8029643584931956684,
      name: r'card_number',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'card_number',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _creditCardStateGetId,
  getLinks: _creditCardStateGetLinks,
  attach: _creditCardStateAttach,
  version: '3.1.0+1',
);

int _creditCardStateEstimateSize(
  CreditCardState object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.card_number;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.cvv;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.expiryDate;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.ownerName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _creditCardStateSerialize(
  CreditCardState object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeByte(offsets[0], object.cardType.index);
  writer.writeString(offsets[1], object.card_number);
  writer.writeString(offsets[2], object.cvv);
  writer.writeString(offsets[3], object.expiryDate);
  writer.writeString(offsets[4], object.ownerName);
}

CreditCardState _creditCardStateDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CreditCardState(
    cardType: _CreditCardStatecardTypeValueEnumMap[
            reader.readByteOrNull(offsets[0])] ??
        CardType.MasterCard,
    card_number: reader.readStringOrNull(offsets[1]),
    cvv: reader.readStringOrNull(offsets[2]),
    expiryDate: reader.readStringOrNull(offsets[3]),
    ownerName: reader.readStringOrNull(offsets[4]),
  );
  return object;
}

P _creditCardStateDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (_CreditCardStatecardTypeValueEnumMap[
              reader.readByteOrNull(offset)] ??
          CardType.MasterCard) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _CreditCardStatecardTypeEnumValueMap = {
  'MasterCard': 0,
  'Visa': 1,
  'Amex': 2,
  'unknown': 3,
};
const _CreditCardStatecardTypeValueEnumMap = {
  0: CardType.MasterCard,
  1: CardType.Visa,
  2: CardType.Amex,
  3: CardType.unknown,
};

Id _creditCardStateGetId(CreditCardState object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _creditCardStateGetLinks(CreditCardState object) {
  return [];
}

void _creditCardStateAttach(
    IsarCollection<dynamic> col, Id id, CreditCardState object) {}

extension CreditCardStateByIndex on IsarCollection<CreditCardState> {
  Future<CreditCardState?> getByCard_number(String? card_number) {
    return getByIndex(r'card_number', [card_number]);
  }

  CreditCardState? getByCard_numberSync(String? card_number) {
    return getByIndexSync(r'card_number', [card_number]);
  }

  Future<bool> deleteByCard_number(String? card_number) {
    return deleteByIndex(r'card_number', [card_number]);
  }

  bool deleteByCard_numberSync(String? card_number) {
    return deleteByIndexSync(r'card_number', [card_number]);
  }

  Future<List<CreditCardState?>> getAllByCard_number(
      List<String?> card_numberValues) {
    final values = card_numberValues.map((e) => [e]).toList();
    return getAllByIndex(r'card_number', values);
  }

  List<CreditCardState?> getAllByCard_numberSync(
      List<String?> card_numberValues) {
    final values = card_numberValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'card_number', values);
  }

  Future<int> deleteAllByCard_number(List<String?> card_numberValues) {
    final values = card_numberValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'card_number', values);
  }

  int deleteAllByCard_numberSync(List<String?> card_numberValues) {
    final values = card_numberValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'card_number', values);
  }

  Future<Id> putByCard_number(CreditCardState object) {
    return putByIndex(r'card_number', object);
  }

  Id putByCard_numberSync(CreditCardState object, {bool saveLinks = true}) {
    return putByIndexSync(r'card_number', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByCard_number(List<CreditCardState> objects) {
    return putAllByIndex(r'card_number', objects);
  }

  List<Id> putAllByCard_numberSync(List<CreditCardState> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'card_number', objects, saveLinks: saveLinks);
  }
}

extension CreditCardStateQueryWhereSort
    on QueryBuilder<CreditCardState, CreditCardState, QWhere> {
  QueryBuilder<CreditCardState, CreditCardState, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CreditCardStateQueryWhere
    on QueryBuilder<CreditCardState, CreditCardState, QWhereClause> {
  QueryBuilder<CreditCardState, CreditCardState, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterWhereClause>
      idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterWhereClause>
      card_numberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'card_number',
        value: [null],
      ));
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterWhereClause>
      card_numberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'card_number',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterWhereClause>
      card_numberEqualTo(String? card_number) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'card_number',
        value: [card_number],
      ));
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterWhereClause>
      card_numberNotEqualTo(String? card_number) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'card_number',
              lower: [],
              upper: [card_number],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'card_number',
              lower: [card_number],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'card_number',
              lower: [card_number],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'card_number',
              lower: [],
              upper: [card_number],
              includeUpper: false,
            ));
      }
    });
  }
}

extension CreditCardStateQueryFilter
    on QueryBuilder<CreditCardState, CreditCardState, QFilterCondition> {
  QueryBuilder<CreditCardState, CreditCardState, QAfterFilterCondition>
      cardTypeEqualTo(CardType value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cardType',
        value: value,
      ));
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterFilterCondition>
      cardTypeGreaterThan(
    CardType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cardType',
        value: value,
      ));
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterFilterCondition>
      cardTypeLessThan(
    CardType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cardType',
        value: value,
      ));
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterFilterCondition>
      cardTypeBetween(
    CardType lower,
    CardType upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cardType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterFilterCondition>
      card_numberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'card_number',
      ));
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterFilterCondition>
      card_numberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'card_number',
      ));
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterFilterCondition>
      card_numberEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'card_number',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterFilterCondition>
      card_numberGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'card_number',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterFilterCondition>
      card_numberLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'card_number',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterFilterCondition>
      card_numberBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'card_number',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterFilterCondition>
      card_numberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'card_number',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterFilterCondition>
      card_numberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'card_number',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterFilterCondition>
      card_numberContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'card_number',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterFilterCondition>
      card_numberMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'card_number',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterFilterCondition>
      card_numberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'card_number',
        value: '',
      ));
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterFilterCondition>
      card_numberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'card_number',
        value: '',
      ));
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterFilterCondition>
      cvvIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cvv',
      ));
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterFilterCondition>
      cvvIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cvv',
      ));
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterFilterCondition>
      cvvEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cvv',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterFilterCondition>
      cvvGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cvv',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterFilterCondition>
      cvvLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cvv',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterFilterCondition>
      cvvBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cvv',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterFilterCondition>
      cvvStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'cvv',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterFilterCondition>
      cvvEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'cvv',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterFilterCondition>
      cvvContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'cvv',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterFilterCondition>
      cvvMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'cvv',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterFilterCondition>
      cvvIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cvv',
        value: '',
      ));
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterFilterCondition>
      cvvIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'cvv',
        value: '',
      ));
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterFilterCondition>
      expiryDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'expiryDate',
      ));
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterFilterCondition>
      expiryDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'expiryDate',
      ));
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterFilterCondition>
      expiryDateEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'expiryDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterFilterCondition>
      expiryDateGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'expiryDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterFilterCondition>
      expiryDateLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'expiryDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterFilterCondition>
      expiryDateBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'expiryDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterFilterCondition>
      expiryDateStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'expiryDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterFilterCondition>
      expiryDateEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'expiryDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterFilterCondition>
      expiryDateContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'expiryDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterFilterCondition>
      expiryDateMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'expiryDate',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterFilterCondition>
      expiryDateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'expiryDate',
        value: '',
      ));
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterFilterCondition>
      expiryDateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'expiryDate',
        value: '',
      ));
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterFilterCondition>
      idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterFilterCondition>
      idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterFilterCondition>
      ownerNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ownerName',
      ));
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterFilterCondition>
      ownerNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ownerName',
      ));
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterFilterCondition>
      ownerNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ownerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterFilterCondition>
      ownerNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ownerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterFilterCondition>
      ownerNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ownerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterFilterCondition>
      ownerNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ownerName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterFilterCondition>
      ownerNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ownerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterFilterCondition>
      ownerNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ownerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterFilterCondition>
      ownerNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ownerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterFilterCondition>
      ownerNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ownerName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterFilterCondition>
      ownerNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ownerName',
        value: '',
      ));
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterFilterCondition>
      ownerNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ownerName',
        value: '',
      ));
    });
  }
}

extension CreditCardStateQueryObject
    on QueryBuilder<CreditCardState, CreditCardState, QFilterCondition> {}

extension CreditCardStateQueryLinks
    on QueryBuilder<CreditCardState, CreditCardState, QFilterCondition> {}

extension CreditCardStateQuerySortBy
    on QueryBuilder<CreditCardState, CreditCardState, QSortBy> {
  QueryBuilder<CreditCardState, CreditCardState, QAfterSortBy>
      sortByCardType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardType', Sort.asc);
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterSortBy>
      sortByCardTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardType', Sort.desc);
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterSortBy>
      sortByCard_number() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'card_number', Sort.asc);
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterSortBy>
      sortByCard_numberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'card_number', Sort.desc);
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterSortBy> sortByCvv() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cvv', Sort.asc);
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterSortBy> sortByCvvDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cvv', Sort.desc);
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterSortBy>
      sortByExpiryDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expiryDate', Sort.asc);
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterSortBy>
      sortByExpiryDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expiryDate', Sort.desc);
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterSortBy>
      sortByOwnerName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ownerName', Sort.asc);
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterSortBy>
      sortByOwnerNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ownerName', Sort.desc);
    });
  }
}

extension CreditCardStateQuerySortThenBy
    on QueryBuilder<CreditCardState, CreditCardState, QSortThenBy> {
  QueryBuilder<CreditCardState, CreditCardState, QAfterSortBy>
      thenByCardType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardType', Sort.asc);
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterSortBy>
      thenByCardTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardType', Sort.desc);
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterSortBy>
      thenByCard_number() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'card_number', Sort.asc);
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterSortBy>
      thenByCard_numberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'card_number', Sort.desc);
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterSortBy> thenByCvv() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cvv', Sort.asc);
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterSortBy> thenByCvvDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cvv', Sort.desc);
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterSortBy>
      thenByExpiryDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expiryDate', Sort.asc);
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterSortBy>
      thenByExpiryDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expiryDate', Sort.desc);
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterSortBy>
      thenByOwnerName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ownerName', Sort.asc);
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QAfterSortBy>
      thenByOwnerNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ownerName', Sort.desc);
    });
  }
}

extension CreditCardStateQueryWhereDistinct
    on QueryBuilder<CreditCardState, CreditCardState, QDistinct> {
  QueryBuilder<CreditCardState, CreditCardState, QDistinct>
      distinctByCardType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cardType');
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QDistinct>
      distinctByCard_number({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'card_number', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QDistinct> distinctByCvv(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cvv', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QDistinct>
      distinctByExpiryDate({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'expiryDate', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CreditCardState, CreditCardState, QDistinct> distinctByOwnerName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ownerName', caseSensitive: caseSensitive);
    });
  }
}

extension CreditCardStateQueryProperty
    on QueryBuilder<CreditCardState, CreditCardState, QQueryProperty> {
  QueryBuilder<CreditCardState, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<CreditCardState, CardType, QQueryOperations> cardTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cardType');
    });
  }

  QueryBuilder<CreditCardState, String?, QQueryOperations>
      card_numberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'card_number');
    });
  }

  QueryBuilder<CreditCardState, String?, QQueryOperations> cvvProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cvv');
    });
  }

  QueryBuilder<CreditCardState, String?, QQueryOperations>
      expiryDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'expiryDate');
    });
  }

  QueryBuilder<CreditCardState, String?, QQueryOperations> ownerNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ownerName');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreditCardState _$$_CreditCardStateFromJson(Map<String, dynamic> json) =>
    _$_CreditCardState(
      card_number: json['card_number'] as String?,
      cardType: $enumDecodeNullable(_$CardTypeEnumMap, json['cardType']) ??
          CardType.unknown,
      cvv: json['cvv'] as String?,
      ownerName: json['ownerName'] as String?,
      expiryDate: json['expiryDate'] as String?,
    );

Map<String, dynamic> _$$_CreditCardStateToJson(_$_CreditCardState instance) =>
    <String, dynamic>{
      'card_number': instance.card_number,
      'cardType': _$CardTypeEnumMap[instance.cardType]!,
      'cvv': instance.cvv,
      'ownerName': instance.ownerName,
      'expiryDate': instance.expiryDate,
    };

const _$CardTypeEnumMap = {
  CardType.MasterCard: 'MasterCard',
  CardType.Visa: 'Visa',
  CardType.Amex: 'Amex',
  CardType.unknown: 'unknown',
};
