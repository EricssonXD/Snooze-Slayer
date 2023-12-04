import 'dart:math';

import 'package:alarm/alarm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:snooze_slayer/model/alarm_model.dart';
import 'package:snooze_slayer/res/constants.dart';
import 'package:snooze_slayer/view_model/database_helper/database_helper.dart';

class AlarmRingView extends StatefulWidget {
  final AlarmSettings alarmSettings;

  const AlarmRingView({super.key, required this.alarmSettings});

  @override
  State<AlarmRingView> createState() => _AlarmRingViewState();
}

class _AlarmRingViewState extends State<AlarmRingView> {
  static const _chars = 'abcdefghijklmnopqrstuvwxyz';
  // static const _chars =
  //     'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
  final Random _rnd = Random();
  String targetString = "";
  String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
      length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));

  late AlarmModel alarm;
  final _answerController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool isInIsar = false;

  @override
  void initState() {
    super.initState();
    getAlarm();
    setState(() {
      targetString = getRandomString(15);
    });
  }

  getAlarm() async {
    alarm = AlarmModel(
      hour: widget.alarmSettings.dateTime.hour,
      minute: widget.alarmSettings.dateTime.minute,
      androidFullScreenIntent: widget.alarmSettings.androidFullScreenIntent,
      assetAudioPath: widget.alarmSettings.assetAudioPath,
      enableNotificationOnKill: widget.alarmSettings.enableNotificationOnKill,
      fadeDuration: widget.alarmSettings.fadeDuration,
      id: widget.alarmSettings.id,
      loopAudio: widget.alarmSettings.loopAudio,
      notificationBody: widget.alarmSettings.notificationBody,
      notificationTitle: widget.alarmSettings.notificationTitle,
      vibrate: widget.alarmSettings.vibrate,
      volume: widget.alarmSettings.volume ?? 1,
    );
    final result = await AlarmManager().getAlarm(widget.alarmSettings.id);
    if (result != null) {
      setState(() {
        alarm = result;
        isInIsar = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NeumorphicText(
                alarm.notificationTitle,
                style: const NeumorphicStyle(
                  color: Colors.black,
                ),
                textStyle: NeumorphicTextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
                // style: Theme.of(context).textTheme.titleLarge,
              ),
              NeumorphicText(
                targetString,
                style: const NeumorphicStyle(
                  color: Colors.black,
                ),
                textStyle: NeumorphicTextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              Neumorphic(
                style: const NeumorphicStyle(depth: -5),
                margin: const EdgeInsets.all(8),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  validator: (value) {
                    if (value != targetString) {
                      return "Incorrect Answer";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Answer',
                    // contentPadding: EdgeInsets.all(8),
                    errorStyle: TextStyle(fontSize: 14),
                  ),
                  controller: _answerController,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  NeumorphicButton(
                    onPressed: () {
                      setState(() {
                        targetString = getRandomString(15);
                      });
                    },
                    child: Text(
                      "Reset Text",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  NeumorphicButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        if (isInIsar) AlarmManager().insert(alarm);
                        Alarm.stop(alarm.id)
                            .then((_) => Navigator.pop(context));
                      }
                    },
                    child: Text(
                      "Stop",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void _snooze(Duration duration, AlarmSettings alarmSettings) {
  final now = DateTime.now();
  Alarm.set(
    alarmSettings: alarmSettings.copyWith(
      dateTime: DateTime(
        now.year,
        now.month,
        now.day,
        now.hour,
        now.minute,
        0,
        0,
      ).add(const Duration(minutes: 1)),
    ),
  );
}
