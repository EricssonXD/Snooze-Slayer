import 'package:clock_analog/res/constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:isar/isar.dart';

part 'alarm_model.freezed.dart';
part 'alarm_model.g.dart';

@unfreezed
@Collection(ignore: {'copyWith'})
class AlarmModel with _$AlarmModel {
  AlarmModel._();
  factory AlarmModel({
    @Default(Isar.autoIncrement) int id,
    required int hour,
    required int min,
    // required int alarmId,
    @Default('Alarm') String title,
    @Default(true) bool isEnabled,
    @Default(1) double volume,
    @Default(true) bool vibrate,
    @Default(true) bool loopAudio,
    @Default(MyAssetAudio.lowTierGod) String assetAudioPath,
    @Default(3.0) double fadeDuration,
    @Default('Alarm is Playing') String notificationTitle,
    @Default('Tap to stop') String notificationBody,
    @Default(false) bool enableNotificationOnKill,
    @Default(true) bool androidFullScreenIntent,
  }) = _AlarmModel;

  @override
  // ignore: recursive_getters
  Id get id => id;

  // factory AlarmModel.fromJson(Map<String, dynamic> json) =>
  //     _$AlarmModelFromJson(json);
}
