import 'package:alarm/alarm.dart';
import 'package:clock_analog/res/constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:isar/isar.dart';

part 'alarm_model.freezed.dart';
part 'alarm_model.g.dart';

@unfreezed
@Collection(ignore: {'copyWith', 'getAlarmSettings'})
class AlarmModel with _$AlarmModel {
  AlarmModel._();
  factory AlarmModel({
    @Default(Isar.autoIncrement) int id,
    required int hour,
    required int minute,
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

  AlarmSettings get getAlarmSettings => AlarmSettings(
        id: id,
        dateTime: _modelToNextTime(hour, minute),
        assetAudioPath: assetAudioPath,
        notificationTitle: notificationTitle,
        notificationBody: notificationBody,
        androidFullScreenIntent: androidFullScreenIntent,
        enableNotificationOnKill: enableNotificationOnKill,
        fadeDuration: fadeDuration,
        loopAudio: loopAudio,
        vibrate: vibrate,
        volume: volume,
      );
  // factory AlarmModel.fromJson(Map<String, dynamic> json) =>
  //     _$AlarmModelFromJson(json);
}

DateTime _modelToNextTime(int hour, int minute) {
  final now = DateTime.now();
  DateTime dateTime = DateTime(now.year, now.month, now.day, hour, minute);
  if (dateTime.isBefore(now)) {
    dateTime = now.add(const Duration(days: 1));
  }
  return dateTime;
}
