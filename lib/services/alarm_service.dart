// import 'dart:math';
// import 'package:snooze_slayer/res/constants.dart';
// import 'package:snooze_slayer/view_model/bloc/alarm_bloc/alarm_cubit.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:alarm/alarm.dart';
import '../model/alarm_model.dart';

abstract class NativeAlarm {
  // static DateTime _modelToNextTime(AlarmModel model) {
  //   final now = DateTime.now();
  //   DateTime dateTime =
  //       DateTime(now.year, now.month, now.day, model.hour, model.minute);
  //   if (dateTime.isBefore(now)) {
  //     dateTime = now.add(const Duration(days: 1));
  //   }
  //   return dateTime;
  // }

  static Future<bool?> setAlarm(AlarmModel alarm) async {
    // final alarmSettings = AlarmSettings(
    //   id: alarm.id,
    //   dateTime: _modelToNextTime(alarm),
    //   assetAudioPath: alarm.assetAudioPath,
    //   notificationTitle: alarm.notificationTitle,
    //   notificationBody: alarm.notificationBody,
    //   androidFullScreenIntent: alarm.androidFullScreenIntent,
    //   enableNotificationOnKill: alarm.enableNotificationOnKill,
    //   fadeDuration: alarm.fadeDuration,
    //   loopAudio: alarm.loopAudio,
    //   vibrate: alarm.vibrate,
    //   volume: alarm.volume,
    // );

    return await Alarm.set(alarmSettings: alarm.getAlarmSettings);
  }

  static Future<bool> deleteAlarm(AlarmModel alarm) async {
    return await Alarm.stop(alarm.id);
  }
}
