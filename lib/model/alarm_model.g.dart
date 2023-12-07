// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetAlarmModelCollection on Isar {
  IsarCollection<AlarmModel> get alarmModels => this.collection();
}

const AlarmModelSchema = CollectionSchema(
  name: r'AlarmModel',
  id: 1796575337475990193,
  properties: {
    r'androidFullScreenIntent': PropertySchema(
      id: 0,
      name: r'androidFullScreenIntent',
      type: IsarType.bool,
    ),
    r'assetAudioPath': PropertySchema(
      id: 1,
      name: r'assetAudioPath',
      type: IsarType.string,
    ),
    r'enableNotificationOnKill': PropertySchema(
      id: 2,
      name: r'enableNotificationOnKill',
      type: IsarType.bool,
    ),
    r'fadeDuration': PropertySchema(
      id: 3,
      name: r'fadeDuration',
      type: IsarType.double,
    ),
    r'hour': PropertySchema(
      id: 4,
      name: r'hour',
      type: IsarType.long,
    ),
    r'isEnabled': PropertySchema(
      id: 5,
      name: r'isEnabled',
      type: IsarType.bool,
    ),
    r'loopAudio': PropertySchema(
      id: 6,
      name: r'loopAudio',
      type: IsarType.bool,
    ),
    r'minute': PropertySchema(
      id: 7,
      name: r'minute',
      type: IsarType.long,
    ),
    r'notificationBody': PropertySchema(
      id: 8,
      name: r'notificationBody',
      type: IsarType.string,
    ),
    r'notificationTitle': PropertySchema(
      id: 9,
      name: r'notificationTitle',
      type: IsarType.string,
    ),
    r'ringType': PropertySchema(
      id: 10,
      name: r'ringType',
      type: IsarType.byte,
      enumMap: _AlarmModelringTypeEnumValueMap,
    ),
    r'title': PropertySchema(
      id: 11,
      name: r'title',
      type: IsarType.string,
    ),
    r'vibrate': PropertySchema(
      id: 12,
      name: r'vibrate',
      type: IsarType.bool,
    ),
    r'volume': PropertySchema(
      id: 13,
      name: r'volume',
      type: IsarType.double,
    )
  },
  estimateSize: _alarmModelEstimateSize,
  serialize: _alarmModelSerialize,
  deserialize: _alarmModelDeserialize,
  deserializeProp: _alarmModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _alarmModelGetId,
  getLinks: _alarmModelGetLinks,
  attach: _alarmModelAttach,
  version: '3.1.0+1',
);

int _alarmModelEstimateSize(
  AlarmModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.assetAudioPath.length * 3;
  bytesCount += 3 + object.notificationBody.length * 3;
  bytesCount += 3 + object.notificationTitle.length * 3;
  bytesCount += 3 + object.title.length * 3;
  return bytesCount;
}

void _alarmModelSerialize(
  AlarmModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.androidFullScreenIntent);
  writer.writeString(offsets[1], object.assetAudioPath);
  writer.writeBool(offsets[2], object.enableNotificationOnKill);
  writer.writeDouble(offsets[3], object.fadeDuration);
  writer.writeLong(offsets[4], object.hour);
  writer.writeBool(offsets[5], object.isEnabled);
  writer.writeBool(offsets[6], object.loopAudio);
  writer.writeLong(offsets[7], object.minute);
  writer.writeString(offsets[8], object.notificationBody);
  writer.writeString(offsets[9], object.notificationTitle);
  writer.writeByte(offsets[10], object.ringType.index);
  writer.writeString(offsets[11], object.title);
  writer.writeBool(offsets[12], object.vibrate);
  writer.writeDouble(offsets[13], object.volume);
}

AlarmModel _alarmModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = AlarmModel(
    androidFullScreenIntent: reader.readBool(offsets[0]),
    assetAudioPath: reader.readString(offsets[1]),
    enableNotificationOnKill: reader.readBool(offsets[2]),
    fadeDuration: reader.readDouble(offsets[3]),
    hour: reader.readLong(offsets[4]),
    id: id,
    isEnabled: reader.readBool(offsets[5]),
    loopAudio: reader.readBool(offsets[6]),
    minute: reader.readLong(offsets[7]),
    notificationBody: reader.readString(offsets[8]),
    notificationTitle: reader.readString(offsets[9]),
    ringType:
        _AlarmModelringTypeValueEnumMap[reader.readByteOrNull(offsets[10])] ??
            AlarmRingType.normal,
    title: reader.readString(offsets[11]),
    vibrate: reader.readBool(offsets[12]),
    volume: reader.readDouble(offsets[13]),
  );
  return object;
}

P _alarmModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBool(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readBool(offset)) as P;
    case 3:
      return (reader.readDouble(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (reader.readBool(offset)) as P;
    case 6:
      return (reader.readBool(offset)) as P;
    case 7:
      return (reader.readLong(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    case 10:
      return (_AlarmModelringTypeValueEnumMap[reader.readByteOrNull(offset)] ??
          AlarmRingType.normal) as P;
    case 11:
      return (reader.readString(offset)) as P;
    case 12:
      return (reader.readBool(offset)) as P;
    case 13:
      return (reader.readDouble(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _AlarmModelringTypeEnumValueMap = {
  'normal': 0,
  'letters': 1,
};
const _AlarmModelringTypeValueEnumMap = {
  0: AlarmRingType.normal,
  1: AlarmRingType.letters,
};

Id _alarmModelGetId(AlarmModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _alarmModelGetLinks(AlarmModel object) {
  return [];
}

void _alarmModelAttach(IsarCollection<dynamic> col, Id id, AlarmModel object) {}

extension AlarmModelQueryWhereSort
    on QueryBuilder<AlarmModel, AlarmModel, QWhere> {
  QueryBuilder<AlarmModel, AlarmModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension AlarmModelQueryWhere
    on QueryBuilder<AlarmModel, AlarmModel, QWhereClause> {
  QueryBuilder<AlarmModel, AlarmModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<AlarmModel, AlarmModel, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterWhereClause> idBetween(
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

extension AlarmModelQueryFilter
    on QueryBuilder<AlarmModel, AlarmModel, QFilterCondition> {
  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition>
      androidFullScreenIntentEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'androidFullScreenIntent',
        value: value,
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition>
      assetAudioPathEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'assetAudioPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition>
      assetAudioPathGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'assetAudioPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition>
      assetAudioPathLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'assetAudioPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition>
      assetAudioPathBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'assetAudioPath',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition>
      assetAudioPathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'assetAudioPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition>
      assetAudioPathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'assetAudioPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition>
      assetAudioPathContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'assetAudioPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition>
      assetAudioPathMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'assetAudioPath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition>
      assetAudioPathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'assetAudioPath',
        value: '',
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition>
      assetAudioPathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'assetAudioPath',
        value: '',
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition>
      enableNotificationOnKillEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'enableNotificationOnKill',
        value: value,
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition>
      fadeDurationEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fadeDuration',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition>
      fadeDurationGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fadeDuration',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition>
      fadeDurationLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fadeDuration',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition>
      fadeDurationBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fadeDuration',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition> hourEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hour',
        value: value,
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition> hourGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hour',
        value: value,
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition> hourLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hour',
        value: value,
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition> hourBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hour',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition> isEnabledEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isEnabled',
        value: value,
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition> loopAudioEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'loopAudio',
        value: value,
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition> minuteEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'minute',
        value: value,
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition> minuteGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'minute',
        value: value,
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition> minuteLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'minute',
        value: value,
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition> minuteBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'minute',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition>
      notificationBodyEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notificationBody',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition>
      notificationBodyGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'notificationBody',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition>
      notificationBodyLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'notificationBody',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition>
      notificationBodyBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'notificationBody',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition>
      notificationBodyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'notificationBody',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition>
      notificationBodyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'notificationBody',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition>
      notificationBodyContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'notificationBody',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition>
      notificationBodyMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'notificationBody',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition>
      notificationBodyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notificationBody',
        value: '',
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition>
      notificationBodyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'notificationBody',
        value: '',
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition>
      notificationTitleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notificationTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition>
      notificationTitleGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'notificationTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition>
      notificationTitleLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'notificationTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition>
      notificationTitleBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'notificationTitle',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition>
      notificationTitleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'notificationTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition>
      notificationTitleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'notificationTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition>
      notificationTitleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'notificationTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition>
      notificationTitleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'notificationTitle',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition>
      notificationTitleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notificationTitle',
        value: '',
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition>
      notificationTitleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'notificationTitle',
        value: '',
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition> ringTypeEqualTo(
      AlarmRingType value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ringType',
        value: value,
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition>
      ringTypeGreaterThan(
    AlarmRingType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ringType',
        value: value,
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition> ringTypeLessThan(
    AlarmRingType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ringType',
        value: value,
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition> ringTypeBetween(
    AlarmRingType lower,
    AlarmRingType upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ringType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition> titleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition> titleGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition> titleLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition> titleBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'title',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition> titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition> titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition> titleContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition> titleMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'title',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition> titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition>
      titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition> vibrateEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'vibrate',
        value: value,
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition> volumeEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'volume',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition> volumeGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'volume',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition> volumeLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'volume',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterFilterCondition> volumeBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'volume',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension AlarmModelQueryObject
    on QueryBuilder<AlarmModel, AlarmModel, QFilterCondition> {}

extension AlarmModelQueryLinks
    on QueryBuilder<AlarmModel, AlarmModel, QFilterCondition> {}

extension AlarmModelQuerySortBy
    on QueryBuilder<AlarmModel, AlarmModel, QSortBy> {
  QueryBuilder<AlarmModel, AlarmModel, QAfterSortBy>
      sortByAndroidFullScreenIntent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'androidFullScreenIntent', Sort.asc);
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterSortBy>
      sortByAndroidFullScreenIntentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'androidFullScreenIntent', Sort.desc);
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterSortBy> sortByAssetAudioPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'assetAudioPath', Sort.asc);
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterSortBy>
      sortByAssetAudioPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'assetAudioPath', Sort.desc);
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterSortBy>
      sortByEnableNotificationOnKill() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enableNotificationOnKill', Sort.asc);
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterSortBy>
      sortByEnableNotificationOnKillDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enableNotificationOnKill', Sort.desc);
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterSortBy> sortByFadeDuration() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fadeDuration', Sort.asc);
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterSortBy> sortByFadeDurationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fadeDuration', Sort.desc);
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterSortBy> sortByHour() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hour', Sort.asc);
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterSortBy> sortByHourDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hour', Sort.desc);
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterSortBy> sortByIsEnabled() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isEnabled', Sort.asc);
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterSortBy> sortByIsEnabledDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isEnabled', Sort.desc);
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterSortBy> sortByLoopAudio() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loopAudio', Sort.asc);
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterSortBy> sortByLoopAudioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loopAudio', Sort.desc);
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterSortBy> sortByMinute() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'minute', Sort.asc);
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterSortBy> sortByMinuteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'minute', Sort.desc);
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterSortBy> sortByNotificationBody() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notificationBody', Sort.asc);
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterSortBy>
      sortByNotificationBodyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notificationBody', Sort.desc);
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterSortBy> sortByNotificationTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notificationTitle', Sort.asc);
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterSortBy>
      sortByNotificationTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notificationTitle', Sort.desc);
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterSortBy> sortByRingType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ringType', Sort.asc);
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterSortBy> sortByRingTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ringType', Sort.desc);
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterSortBy> sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterSortBy> sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterSortBy> sortByVibrate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vibrate', Sort.asc);
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterSortBy> sortByVibrateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vibrate', Sort.desc);
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterSortBy> sortByVolume() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'volume', Sort.asc);
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterSortBy> sortByVolumeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'volume', Sort.desc);
    });
  }
}

extension AlarmModelQuerySortThenBy
    on QueryBuilder<AlarmModel, AlarmModel, QSortThenBy> {
  QueryBuilder<AlarmModel, AlarmModel, QAfterSortBy>
      thenByAndroidFullScreenIntent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'androidFullScreenIntent', Sort.asc);
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterSortBy>
      thenByAndroidFullScreenIntentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'androidFullScreenIntent', Sort.desc);
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterSortBy> thenByAssetAudioPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'assetAudioPath', Sort.asc);
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterSortBy>
      thenByAssetAudioPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'assetAudioPath', Sort.desc);
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterSortBy>
      thenByEnableNotificationOnKill() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enableNotificationOnKill', Sort.asc);
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterSortBy>
      thenByEnableNotificationOnKillDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enableNotificationOnKill', Sort.desc);
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterSortBy> thenByFadeDuration() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fadeDuration', Sort.asc);
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterSortBy> thenByFadeDurationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fadeDuration', Sort.desc);
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterSortBy> thenByHour() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hour', Sort.asc);
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterSortBy> thenByHourDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hour', Sort.desc);
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterSortBy> thenByIsEnabled() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isEnabled', Sort.asc);
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterSortBy> thenByIsEnabledDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isEnabled', Sort.desc);
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterSortBy> thenByLoopAudio() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loopAudio', Sort.asc);
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterSortBy> thenByLoopAudioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loopAudio', Sort.desc);
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterSortBy> thenByMinute() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'minute', Sort.asc);
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterSortBy> thenByMinuteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'minute', Sort.desc);
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterSortBy> thenByNotificationBody() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notificationBody', Sort.asc);
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterSortBy>
      thenByNotificationBodyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notificationBody', Sort.desc);
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterSortBy> thenByNotificationTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notificationTitle', Sort.asc);
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterSortBy>
      thenByNotificationTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notificationTitle', Sort.desc);
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterSortBy> thenByRingType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ringType', Sort.asc);
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterSortBy> thenByRingTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ringType', Sort.desc);
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterSortBy> thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterSortBy> thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterSortBy> thenByVibrate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vibrate', Sort.asc);
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterSortBy> thenByVibrateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vibrate', Sort.desc);
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterSortBy> thenByVolume() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'volume', Sort.asc);
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QAfterSortBy> thenByVolumeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'volume', Sort.desc);
    });
  }
}

extension AlarmModelQueryWhereDistinct
    on QueryBuilder<AlarmModel, AlarmModel, QDistinct> {
  QueryBuilder<AlarmModel, AlarmModel, QDistinct>
      distinctByAndroidFullScreenIntent() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'androidFullScreenIntent');
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QDistinct> distinctByAssetAudioPath(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'assetAudioPath',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QDistinct>
      distinctByEnableNotificationOnKill() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'enableNotificationOnKill');
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QDistinct> distinctByFadeDuration() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fadeDuration');
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QDistinct> distinctByHour() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hour');
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QDistinct> distinctByIsEnabled() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isEnabled');
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QDistinct> distinctByLoopAudio() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'loopAudio');
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QDistinct> distinctByMinute() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'minute');
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QDistinct> distinctByNotificationBody(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'notificationBody',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QDistinct> distinctByNotificationTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'notificationTitle',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QDistinct> distinctByRingType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ringType');
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QDistinct> distinctByVibrate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'vibrate');
    });
  }

  QueryBuilder<AlarmModel, AlarmModel, QDistinct> distinctByVolume() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'volume');
    });
  }
}

extension AlarmModelQueryProperty
    on QueryBuilder<AlarmModel, AlarmModel, QQueryProperty> {
  QueryBuilder<AlarmModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<AlarmModel, bool, QQueryOperations>
      androidFullScreenIntentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'androidFullScreenIntent');
    });
  }

  QueryBuilder<AlarmModel, String, QQueryOperations> assetAudioPathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'assetAudioPath');
    });
  }

  QueryBuilder<AlarmModel, bool, QQueryOperations>
      enableNotificationOnKillProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'enableNotificationOnKill');
    });
  }

  QueryBuilder<AlarmModel, double, QQueryOperations> fadeDurationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fadeDuration');
    });
  }

  QueryBuilder<AlarmModel, int, QQueryOperations> hourProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hour');
    });
  }

  QueryBuilder<AlarmModel, bool, QQueryOperations> isEnabledProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isEnabled');
    });
  }

  QueryBuilder<AlarmModel, bool, QQueryOperations> loopAudioProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'loopAudio');
    });
  }

  QueryBuilder<AlarmModel, int, QQueryOperations> minuteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'minute');
    });
  }

  QueryBuilder<AlarmModel, String, QQueryOperations>
      notificationBodyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'notificationBody');
    });
  }

  QueryBuilder<AlarmModel, String, QQueryOperations>
      notificationTitleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'notificationTitle');
    });
  }

  QueryBuilder<AlarmModel, AlarmRingType, QQueryOperations> ringTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ringType');
    });
  }

  QueryBuilder<AlarmModel, String, QQueryOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }

  QueryBuilder<AlarmModel, bool, QQueryOperations> vibrateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'vibrate');
    });
  }

  QueryBuilder<AlarmModel, double, QQueryOperations> volumeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'volume');
    });
  }
}
