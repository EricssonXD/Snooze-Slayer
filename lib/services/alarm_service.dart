// import 'dart:math';
// import 'package:clock_analog/res/constants.dart';
// import 'package:clock_analog/view_model/bloc/alarm_bloc/alarm_cubit.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:alarm/alarm.dart';
import '../model/alarm_model.dart';

abstract class NativeAlarm {
  // static void createAlarm(
  //   TimeOfDay time,
  //   BuildContext context, {
  //   double volume = 1,
  //   bool vibrate = true,
  //   bool loopAudio = true,
  //   String assetAudioPath = MyAssetAudio.lowTierGod,
  //   double fadeDuration = 3.0,
  //   String notificationTitle = 'Alarm is Playing',
  //   String notificationBody = 'Tap to stop',
  //   bool enableNotificationOnKill = false,
  //   bool androidFullScreenIntent = true,
  // }) {
  //   final alarmSettings = AlarmSettings(
  //     id: Random().nextInt(100),
  //     dateTime: modelToNextTime(time),
  //     assetAudioPath: assetAudioPath,
  //     loopAudio: loopAudio,
  //     vibrate: vibrate,
  //     volume: volume,
  //     fadeDuration: fadeDuration,
  //     notificationTitle: notificationTitle,
  //     notificationBody: notificationBody,
  //     enableNotificationOnKill: enableNotificationOnKill,
  //     androidFullScreenIntent: androidFullScreenIntent,
  //   );

  //   Alarm.set(alarmSettings: alarmSettings).then((value) {
  //     BlocProvider.of<AlarmCubit>(context).helper.insert(
  //           AlarmModel(
  //             hour: time.hour,
  //             min: time.minute,
  //             isEnabled: true,
  //             alarmId: alarmSettings.id,
  //             day: 'Today',
  //             title: 'Alarm N',
  //           ),
  //         );
  //   })
  //       // .then((value) {
  //       //   BlocProvider.of<AlarmCubit>(context).getData();
  //       // })
  //       ;
  // }

  static DateTime _modelToNextTime(AlarmModel model) {
    final now = DateTime.now();
    DateTime dateTime =
        DateTime(now.year, now.month, now.day, model.hour, model.min);
    if (dateTime.isBefore(now)) {
      dateTime = now.add(const Duration(days: 1));
    }
    return dateTime;
  }

  static Future<bool?> setAlarm(AlarmModel alarm) async {
    final alarmSettings = AlarmSettings(
      id: alarm.id,
      dateTime: _modelToNextTime(alarm),
      assetAudioPath: alarm.assetAudioPath,
      notificationTitle: alarm.notificationTitle,
      notificationBody: alarm.notificationBody,
      androidFullScreenIntent: alarm.androidFullScreenIntent,
      enableNotificationOnKill: alarm.enableNotificationOnKill,
      fadeDuration: alarm.fadeDuration,
      loopAudio: alarm.loopAudio,
      vibrate: alarm.vibrate,
      volume: alarm.volume,
    );

    return await Alarm.set(alarmSettings: alarmSettings);
  }

  static void deleteAlarm(AlarmModel alarm) {
    Alarm.stop(alarm.id);
  }
}
