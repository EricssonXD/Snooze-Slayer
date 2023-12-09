import 'dart:math';

import 'package:alarm/alarm.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:snooze_slayer/model/alarm_model.dart';
import 'package:snooze_slayer/view_model/bloc/ringing_bloc/ringing_cubit.dart';
import 'package:snooze_slayer/view_model/database_helper/database_helper.dart';

part 'normal_ring_view.dart';
part 'letter_ring_view.dart';

class AlarmRingView extends StatefulWidget {
  final AlarmSettings alarmSettings;

  const AlarmRingView({super.key, required this.alarmSettings});

  @override
  State<AlarmRingView> createState() => _AlarmRingViewState();
}

class _AlarmRingViewState extends State<AlarmRingView> {
  late AlarmModel alarm;
  bool isInIsar = false;

  @override
  void initState() {
    super.initState();
    getAlarm();
  }

  getAlarm() async {
    alarm = AlarmModel(
      id: widget.alarmSettings.id,
      hour: widget.alarmSettings.dateTime.hour,
      minute: widget.alarmSettings.dateTime.minute,
      androidFullScreenIntent: widget.alarmSettings.androidFullScreenIntent,
      assetAudioPath: widget.alarmSettings.assetAudioPath,
      enableNotificationOnKill: widget.alarmSettings.enableNotificationOnKill,
      fadeDuration: widget.alarmSettings.fadeDuration,
      loopAudio: widget.alarmSettings.loopAudio,
      notificationBody: widget.alarmSettings.notificationBody,
      notificationTitle: widget.alarmSettings.notificationTitle,
      vibrate: widget.alarmSettings.vibrate,
      volume: widget.alarmSettings.volume ?? 1,
      isEnabled: false,
      title: "Alarm",
    );
    final result = await AlarmManager().getAlarm(widget.alarmSettings.id);
    if (result != null) {
      if (mounted) {
        setState(() {
          alarm = result;
          isInIsar = true;
        });
      }
    }
  }

  void _onStopCallback() {
    BlocProvider.of<RingingCubit>(context).stopRinging(alarm);
    if (isInIsar) {
      AlarmManager().insert(alarm);
    }
  }

  Widget _buildRingBody() {
    if (!isInIsar) {
      switch (alarm.ringType) {
        case AlarmRingType.letters:
          return _Letters(
            callback: _onStopCallback,
          );
        default:
          break;
      }
    }
    return _Normal(
      alarmSettings: alarm.getAlarmSettings,
      callback: _onStopCallback,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox.expand(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
              _buildRingBody(),
            ],
          ),
        ),
      ),
    );
  }
}
