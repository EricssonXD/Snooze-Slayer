import 'dart:math';
import 'package:alarm/alarm.dart';
import 'package:clock_analog/res/constants.dart';
import 'package:clock_analog/view_model/bloc/alarm_bloc/alarm_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isar/isar.dart';
import '../model/alarm_model.dart';

class MyAlarm {
  static void setAlarm(
    TimeOfDay time,
    BuildContext context, {
    double volume = 1,
    bool vibrate = true,
    bool loopAudio = true,
    String assetAudioPath = MyAssetAudio.lowTierGod,
    double fadeDuration = 3.0,
    String notificationTitle = 'Alarm is Playing',
    String notificationBody = 'Tap to stop',
    bool enableNotificationOnKill = false,
    bool androidFullScreenIntent = true,
  }) {
    final timeOfDay = time;
    final nextDay = DateTime.now().add(const Duration(days: 1));
    var dateTime = DateTime(DateTime.now().year, DateTime.now().month,
        DateTime.now().day, timeOfDay.hour, timeOfDay.minute);
    if (dateTime.isBefore(DateTime.now())) {
      dateTime = nextDay;
    }

    final alarmSettings = AlarmSettings(
      id: Random().nextInt(100),
      dateTime: dateTime,
      assetAudioPath: assetAudioPath,
      loopAudio: loopAudio,
      vibrate: vibrate,
      volume: volume,
      fadeDuration: fadeDuration,
      notificationTitle: notificationTitle,
      notificationBody: notificationBody,
      enableNotificationOnKill: enableNotificationOnKill,
      androidFullScreenIntent: androidFullScreenIntent,
    );

    Alarm.set(alarmSettings: alarmSettings).then((value) {
      BlocProvider.of<AlarmCubit>(context).helper.insert(
            AlarmModel(
              hour: time.hourOfPeriod,
              period: time.period.name,
              min: time.minute,
              day: 'Today',
              isEnabled: true,
              alarmId: alarmSettings.id,
              title: 'Alarm N',
            ),
          );
    }).then((value) {
      BlocProvider.of<AlarmCubit>(context).getData();
    });
  }
}
