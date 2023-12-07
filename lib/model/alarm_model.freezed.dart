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
  int get id => throw _privateConstructorUsedError;
  set id(int value) => throw _privateConstructorUsedError;
  int get hour => throw _privateConstructorUsedError;
  set hour(int value) => throw _privateConstructorUsedError;
  int get minute => throw _privateConstructorUsedError;
  set minute(int value) =>
      throw _privateConstructorUsedError; // required int alarmId,
  String get title =>
      throw _privateConstructorUsedError; // required int alarmId,
  set title(String value) => throw _privateConstructorUsedError;
  bool get isEnabled => throw _privateConstructorUsedError;
  set isEnabled(bool value) => throw _privateConstructorUsedError;
  double get volume => throw _privateConstructorUsedError;
  set volume(double value) => throw _privateConstructorUsedError;
  bool get vibrate => throw _privateConstructorUsedError;
  set vibrate(bool value) => throw _privateConstructorUsedError;
  bool get loopAudio => throw _privateConstructorUsedError;
  set loopAudio(bool value) => throw _privateConstructorUsedError;
  String get assetAudioPath => throw _privateConstructorUsedError;
  set assetAudioPath(String value) => throw _privateConstructorUsedError;
  double get fadeDuration => throw _privateConstructorUsedError;
  set fadeDuration(double value) => throw _privateConstructorUsedError;
  String get notificationTitle => throw _privateConstructorUsedError;
  set notificationTitle(String value) => throw _privateConstructorUsedError;
  String get notificationBody => throw _privateConstructorUsedError;
  set notificationBody(String value) => throw _privateConstructorUsedError;
  bool get enableNotificationOnKill => throw _privateConstructorUsedError;
  set enableNotificationOnKill(bool value) =>
      throw _privateConstructorUsedError;
  bool get androidFullScreenIntent => throw _privateConstructorUsedError;
  set androidFullScreenIntent(bool value) => throw _privateConstructorUsedError;
  @enumerated
  AlarmRingType get ringType => throw _privateConstructorUsedError;
  @enumerated
  set ringType(AlarmRingType value) => throw _privateConstructorUsedError;

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
      {int id,
      int hour,
      int minute,
      String title,
      bool isEnabled,
      double volume,
      bool vibrate,
      bool loopAudio,
      String assetAudioPath,
      double fadeDuration,
      String notificationTitle,
      String notificationBody,
      bool enableNotificationOnKill,
      bool androidFullScreenIntent,
      @enumerated AlarmRingType ringType});
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
    Object? id = null,
    Object? hour = null,
    Object? minute = null,
    Object? title = null,
    Object? isEnabled = null,
    Object? volume = null,
    Object? vibrate = null,
    Object? loopAudio = null,
    Object? assetAudioPath = null,
    Object? fadeDuration = null,
    Object? notificationTitle = null,
    Object? notificationBody = null,
    Object? enableNotificationOnKill = null,
    Object? androidFullScreenIntent = null,
    Object? ringType = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      hour: null == hour
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as int,
      minute: null == minute
          ? _value.minute
          : minute // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
      vibrate: null == vibrate
          ? _value.vibrate
          : vibrate // ignore: cast_nullable_to_non_nullable
              as bool,
      loopAudio: null == loopAudio
          ? _value.loopAudio
          : loopAudio // ignore: cast_nullable_to_non_nullable
              as bool,
      assetAudioPath: null == assetAudioPath
          ? _value.assetAudioPath
          : assetAudioPath // ignore: cast_nullable_to_non_nullable
              as String,
      fadeDuration: null == fadeDuration
          ? _value.fadeDuration
          : fadeDuration // ignore: cast_nullable_to_non_nullable
              as double,
      notificationTitle: null == notificationTitle
          ? _value.notificationTitle
          : notificationTitle // ignore: cast_nullable_to_non_nullable
              as String,
      notificationBody: null == notificationBody
          ? _value.notificationBody
          : notificationBody // ignore: cast_nullable_to_non_nullable
              as String,
      enableNotificationOnKill: null == enableNotificationOnKill
          ? _value.enableNotificationOnKill
          : enableNotificationOnKill // ignore: cast_nullable_to_non_nullable
              as bool,
      androidFullScreenIntent: null == androidFullScreenIntent
          ? _value.androidFullScreenIntent
          : androidFullScreenIntent // ignore: cast_nullable_to_non_nullable
              as bool,
      ringType: null == ringType
          ? _value.ringType
          : ringType // ignore: cast_nullable_to_non_nullable
              as AlarmRingType,
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
      {int id,
      int hour,
      int minute,
      String title,
      bool isEnabled,
      double volume,
      bool vibrate,
      bool loopAudio,
      String assetAudioPath,
      double fadeDuration,
      String notificationTitle,
      String notificationBody,
      bool enableNotificationOnKill,
      bool androidFullScreenIntent,
      @enumerated AlarmRingType ringType});
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
    Object? id = null,
    Object? hour = null,
    Object? minute = null,
    Object? title = null,
    Object? isEnabled = null,
    Object? volume = null,
    Object? vibrate = null,
    Object? loopAudio = null,
    Object? assetAudioPath = null,
    Object? fadeDuration = null,
    Object? notificationTitle = null,
    Object? notificationBody = null,
    Object? enableNotificationOnKill = null,
    Object? androidFullScreenIntent = null,
    Object? ringType = null,
  }) {
    return _then(_$AlarmModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      hour: null == hour
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as int,
      minute: null == minute
          ? _value.minute
          : minute // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
      vibrate: null == vibrate
          ? _value.vibrate
          : vibrate // ignore: cast_nullable_to_non_nullable
              as bool,
      loopAudio: null == loopAudio
          ? _value.loopAudio
          : loopAudio // ignore: cast_nullable_to_non_nullable
              as bool,
      assetAudioPath: null == assetAudioPath
          ? _value.assetAudioPath
          : assetAudioPath // ignore: cast_nullable_to_non_nullable
              as String,
      fadeDuration: null == fadeDuration
          ? _value.fadeDuration
          : fadeDuration // ignore: cast_nullable_to_non_nullable
              as double,
      notificationTitle: null == notificationTitle
          ? _value.notificationTitle
          : notificationTitle // ignore: cast_nullable_to_non_nullable
              as String,
      notificationBody: null == notificationBody
          ? _value.notificationBody
          : notificationBody // ignore: cast_nullable_to_non_nullable
              as String,
      enableNotificationOnKill: null == enableNotificationOnKill
          ? _value.enableNotificationOnKill
          : enableNotificationOnKill // ignore: cast_nullable_to_non_nullable
              as bool,
      androidFullScreenIntent: null == androidFullScreenIntent
          ? _value.androidFullScreenIntent
          : androidFullScreenIntent // ignore: cast_nullable_to_non_nullable
              as bool,
      ringType: null == ringType
          ? _value.ringType
          : ringType // ignore: cast_nullable_to_non_nullable
              as AlarmRingType,
    ));
  }
}

/// @nodoc

class _$AlarmModelImpl extends _AlarmModel with DiagnosticableTreeMixin {
  _$AlarmModelImpl(
      {this.id = Isar.autoIncrement,
      required this.hour,
      required this.minute,
      this.title = 'Alarm',
      this.isEnabled = true,
      this.volume = 1,
      this.vibrate = true,
      this.loopAudio = true,
      this.assetAudioPath = MyAssetAudio.lowTierGod,
      this.fadeDuration = 3.0,
      this.notificationTitle = 'Alarm is Playing',
      this.notificationBody = 'Tap to stop',
      this.enableNotificationOnKill = false,
      this.androidFullScreenIntent = true,
      @enumerated this.ringType = AlarmRingType.normal})
      : super._();

  @override
  @JsonKey()
  int id;
  @override
  int hour;
  @override
  int minute;
// required int alarmId,
  @override
  @JsonKey()
  String title;
  @override
  @JsonKey()
  bool isEnabled;
  @override
  @JsonKey()
  double volume;
  @override
  @JsonKey()
  bool vibrate;
  @override
  @JsonKey()
  bool loopAudio;
  @override
  @JsonKey()
  String assetAudioPath;
  @override
  @JsonKey()
  double fadeDuration;
  @override
  @JsonKey()
  String notificationTitle;
  @override
  @JsonKey()
  String notificationBody;
  @override
  @JsonKey()
  bool enableNotificationOnKill;
  @override
  @JsonKey()
  bool androidFullScreenIntent;
  @override
  @JsonKey()
  @enumerated
  AlarmRingType ringType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AlarmModel(id: $id, hour: $hour, minute: $minute, title: $title, isEnabled: $isEnabled, volume: $volume, vibrate: $vibrate, loopAudio: $loopAudio, assetAudioPath: $assetAudioPath, fadeDuration: $fadeDuration, notificationTitle: $notificationTitle, notificationBody: $notificationBody, enableNotificationOnKill: $enableNotificationOnKill, androidFullScreenIntent: $androidFullScreenIntent, ringType: $ringType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AlarmModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('hour', hour))
      ..add(DiagnosticsProperty('minute', minute))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('isEnabled', isEnabled))
      ..add(DiagnosticsProperty('volume', volume))
      ..add(DiagnosticsProperty('vibrate', vibrate))
      ..add(DiagnosticsProperty('loopAudio', loopAudio))
      ..add(DiagnosticsProperty('assetAudioPath', assetAudioPath))
      ..add(DiagnosticsProperty('fadeDuration', fadeDuration))
      ..add(DiagnosticsProperty('notificationTitle', notificationTitle))
      ..add(DiagnosticsProperty('notificationBody', notificationBody))
      ..add(DiagnosticsProperty(
          'enableNotificationOnKill', enableNotificationOnKill))
      ..add(DiagnosticsProperty(
          'androidFullScreenIntent', androidFullScreenIntent))
      ..add(DiagnosticsProperty('ringType', ringType));
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlarmModelImplCopyWith<_$AlarmModelImpl> get copyWith =>
      __$$AlarmModelImplCopyWithImpl<_$AlarmModelImpl>(this, _$identity);
}

abstract class _AlarmModel extends AlarmModel {
  factory _AlarmModel(
      {int id,
      required int hour,
      required int minute,
      String title,
      bool isEnabled,
      double volume,
      bool vibrate,
      bool loopAudio,
      String assetAudioPath,
      double fadeDuration,
      String notificationTitle,
      String notificationBody,
      bool enableNotificationOnKill,
      bool androidFullScreenIntent,
      @enumerated AlarmRingType ringType}) = _$AlarmModelImpl;
  _AlarmModel._() : super._();

  @override
  int get id;
  set id(int value);
  @override
  int get hour;
  set hour(int value);
  @override
  int get minute;
  set minute(int value);
  @override // required int alarmId,
  String get title; // required int alarmId,
  set title(String value);
  @override
  bool get isEnabled;
  set isEnabled(bool value);
  @override
  double get volume;
  set volume(double value);
  @override
  bool get vibrate;
  set vibrate(bool value);
  @override
  bool get loopAudio;
  set loopAudio(bool value);
  @override
  String get assetAudioPath;
  set assetAudioPath(String value);
  @override
  double get fadeDuration;
  set fadeDuration(double value);
  @override
  String get notificationTitle;
  set notificationTitle(String value);
  @override
  String get notificationBody;
  set notificationBody(String value);
  @override
  bool get enableNotificationOnKill;
  set enableNotificationOnKill(bool value);
  @override
  bool get androidFullScreenIntent;
  set androidFullScreenIntent(bool value);
  @override
  @enumerated
  AlarmRingType get ringType;
  @enumerated
  set ringType(AlarmRingType value);
  @override
  @JsonKey(ignore: true)
  _$$AlarmModelImplCopyWith<_$AlarmModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
