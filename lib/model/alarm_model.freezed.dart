// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alarm_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AlarmModel {
// required String key,
  int get hour => throw _privateConstructorUsedError; // required String key,
  set hour(int value) => throw _privateConstructorUsedError;
  int get min => throw _privateConstructorUsedError;
  set min(int value) => throw _privateConstructorUsedError;
  String get period => throw _privateConstructorUsedError;
  set period(String value) => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  set title(String value) => throw _privateConstructorUsedError;
  String get day => throw _privateConstructorUsedError;
  set day(String value) => throw _privateConstructorUsedError;
  bool get isEnabled => throw _privateConstructorUsedError;
  set isEnabled(bool value) => throw _privateConstructorUsedError;
  int get alarmId => throw _privateConstructorUsedError;
  set alarmId(int value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AlarmModelCopyWith<AlarmModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlarmModelCopyWith<$Res> {
  factory $AlarmModelCopyWith(
          AlarmModel value, $Res Function(AlarmModel) then) =
      _$AlarmModelCopyWithImpl<$Res, AlarmModel>;
  @useResult
  $Res call(
      {int hour,
      int min,
      String period,
      String title,
      String day,
      bool isEnabled,
      int alarmId});
}

/// @nodoc
class _$AlarmModelCopyWithImpl<$Res, $Val extends AlarmModel>
    implements $AlarmModelCopyWith<$Res> {
  _$AlarmModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hour = null,
    Object? min = null,
    Object? period = null,
    Object? title = null,
    Object? day = null,
    Object? isEnabled = null,
    Object? alarmId = null,
  }) {
    return _then(_value.copyWith(
      hour: null == hour
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as int,
      min: null == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as int,
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      alarmId: null == alarmId
          ? _value.alarmId
          : alarmId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AlarmModelImplCopyWith<$Res>
    implements $AlarmModelCopyWith<$Res> {
  factory _$$AlarmModelImplCopyWith(
          _$AlarmModelImpl value, $Res Function(_$AlarmModelImpl) then) =
      __$$AlarmModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int hour,
      int min,
      String period,
      String title,
      String day,
      bool isEnabled,
      int alarmId});
}

/// @nodoc
class __$$AlarmModelImplCopyWithImpl<$Res>
    extends _$AlarmModelCopyWithImpl<$Res, _$AlarmModelImpl>
    implements _$$AlarmModelImplCopyWith<$Res> {
  __$$AlarmModelImplCopyWithImpl(
      _$AlarmModelImpl _value, $Res Function(_$AlarmModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hour = null,
    Object? min = null,
    Object? period = null,
    Object? title = null,
    Object? day = null,
    Object? isEnabled = null,
    Object? alarmId = null,
  }) {
    return _then(_$AlarmModelImpl(
      hour: null == hour
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as int,
      min: null == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as int,
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      alarmId: null == alarmId
          ? _value.alarmId
          : alarmId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AlarmModelImpl extends _AlarmModel with DiagnosticableTreeMixin {
  _$AlarmModelImpl(
      {required this.hour,
      required this.min,
      required this.period,
      required this.title,
      required this.day,
      required this.isEnabled,
      required this.alarmId})
      : super._();

// required String key,
  @override
  int hour;
  @override
  int min;
  @override
  String period;
  @override
  String title;
  @override
  String day;
  @override
  bool isEnabled;
  @override
  int alarmId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AlarmModel(hour: $hour, min: $min, period: $period, title: $title, day: $day, isEnabled: $isEnabled, alarmId: $alarmId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AlarmModel'))
      ..add(DiagnosticsProperty('hour', hour))
      ..add(DiagnosticsProperty('min', min))
      ..add(DiagnosticsProperty('period', period))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('day', day))
      ..add(DiagnosticsProperty('isEnabled', isEnabled))
      ..add(DiagnosticsProperty('alarmId', alarmId));
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlarmModelImplCopyWith<_$AlarmModelImpl> get copyWith =>
      __$$AlarmModelImplCopyWithImpl<_$AlarmModelImpl>(this, _$identity);
}

abstract class _AlarmModel extends AlarmModel {
  factory _AlarmModel(
      {required int hour,
      required int min,
      required String period,
      required String title,
      required String day,
      required bool isEnabled,
      required int alarmId}) = _$AlarmModelImpl;
  _AlarmModel._() : super._();

  @override // required String key,
  int get hour; // required String key,
  set hour(int value);
  @override
  int get min;
  set min(int value);
  @override
  String get period;
  set period(String value);
  @override
  String get title;
  set title(String value);
  @override
  String get day;
  set day(String value);
  @override
  bool get isEnabled;
  set isEnabled(bool value);
  @override
  int get alarmId;
  set alarmId(int value);
  @override
  @JsonKey(ignore: true)
  _$$AlarmModelImplCopyWith<_$AlarmModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
