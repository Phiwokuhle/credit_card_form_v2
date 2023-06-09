// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credit_cards.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCreditCardsLocalDBCollection on Isar {
  IsarCollection<CreditCardsLocalDB> get creditCardsLocalDBs =>
      this.collection();
}

const CreditCardsLocalDBSchema = CollectionSchema(
  name: r'CreditCardsLocalDB',
  id: -7178128678684712284,
  properties: {},
  estimateSize: _creditCardsLocalDBEstimateSize,
  serialize: _creditCardsLocalDBSerialize,
  deserialize: _creditCardsLocalDBDeserialize,
  deserializeProp: _creditCardsLocalDBDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _creditCardsLocalDBGetId,
  getLinks: _creditCardsLocalDBGetLinks,
  attach: _creditCardsLocalDBAttach,
  version: '3.1.0+1',
);

int _creditCardsLocalDBEstimateSize(
  CreditCardsLocalDB object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _creditCardsLocalDBSerialize(
  CreditCardsLocalDB object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {}
CreditCardsLocalDB _creditCardsLocalDBDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CreditCardsLocalDB();
  object.id = id;
  return object;
}

P _creditCardsLocalDBDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _creditCardsLocalDBGetId(CreditCardsLocalDB object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _creditCardsLocalDBGetLinks(
    CreditCardsLocalDB object) {
  return [];
}

void _creditCardsLocalDBAttach(
    IsarCollection<dynamic> col, Id id, CreditCardsLocalDB object) {
  object.id = id;
}

extension CreditCardsLocalDBQueryWhereSort
    on QueryBuilder<CreditCardsLocalDB, CreditCardsLocalDB, QWhere> {
  QueryBuilder<CreditCardsLocalDB, CreditCardsLocalDB, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CreditCardsLocalDBQueryWhere
    on QueryBuilder<CreditCardsLocalDB, CreditCardsLocalDB, QWhereClause> {
  QueryBuilder<CreditCardsLocalDB, CreditCardsLocalDB, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<CreditCardsLocalDB, CreditCardsLocalDB, QAfterWhereClause>
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

  QueryBuilder<CreditCardsLocalDB, CreditCardsLocalDB, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<CreditCardsLocalDB, CreditCardsLocalDB, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<CreditCardsLocalDB, CreditCardsLocalDB, QAfterWhereClause>
      idBetween(
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
}

extension CreditCardsLocalDBQueryFilter
    on QueryBuilder<CreditCardsLocalDB, CreditCardsLocalDB, QFilterCondition> {
  QueryBuilder<CreditCardsLocalDB, CreditCardsLocalDB, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CreditCardsLocalDB, CreditCardsLocalDB, QAfterFilterCondition>
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

  QueryBuilder<CreditCardsLocalDB, CreditCardsLocalDB, QAfterFilterCondition>
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

  QueryBuilder<CreditCardsLocalDB, CreditCardsLocalDB, QAfterFilterCondition>
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
}

extension CreditCardsLocalDBQueryObject
    on QueryBuilder<CreditCardsLocalDB, CreditCardsLocalDB, QFilterCondition> {}

extension CreditCardsLocalDBQueryLinks
    on QueryBuilder<CreditCardsLocalDB, CreditCardsLocalDB, QFilterCondition> {}

extension CreditCardsLocalDBQuerySortBy
    on QueryBuilder<CreditCardsLocalDB, CreditCardsLocalDB, QSortBy> {}

extension CreditCardsLocalDBQuerySortThenBy
    on QueryBuilder<CreditCardsLocalDB, CreditCardsLocalDB, QSortThenBy> {
  QueryBuilder<CreditCardsLocalDB, CreditCardsLocalDB, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<CreditCardsLocalDB, CreditCardsLocalDB, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension CreditCardsLocalDBQueryWhereDistinct
    on QueryBuilder<CreditCardsLocalDB, CreditCardsLocalDB, QDistinct> {}

extension CreditCardsLocalDBQueryProperty
    on QueryBuilder<CreditCardsLocalDB, CreditCardsLocalDB, QQueryProperty> {
  QueryBuilder<CreditCardsLocalDB, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }
}
