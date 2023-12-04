import 'dart:async';

import 'package:alarm/alarm.dart';
import 'package:snooze_slayer/res/constants.dart';
import 'package:snooze_slayer/view/alarm_view/alarm_ring_view.dart';
import 'package:snooze_slayer/view/alarm_view/components/body.dart';
import 'package:snooze_slayer/view/alarm_view/components/floating_button.dart';
import 'package:snooze_slayer/view_model/bloc/alarm_bloc/alarm_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AlarmScreen extends StatefulWidget {
  const AlarmScreen({super.key});
  @override
  State<AlarmScreen> createState() => _AlarmScreenState();
}

class _AlarmScreenState extends State<AlarmScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<AlarmCubit>(context).getData();
    initRingScreen();
  }

  static StreamSubscription<AlarmSettings>? subscription;
  void initRingScreen() async {
    // try {
    //   final newestAlarm = await Alarm.ringStream.stream.last;
    //   print(newestAlarm);
    //   if (await Alarm.isRinging(newestAlarm.id)) {
    //     navigateToRingScreen(newestAlarm);
    //   }
    // } catch (e) {
    //   print(e);
    // }
    // Alarm.ringStream.stream.
    subscription ??= Alarm.ringStream.stream.listen(
      (alarmSettings) {
        navigateToRingScreen(alarmSettings);
        debugPrint("YOOOOOOringringring");
      },
    );
  }

  Future<void> navigateToRingScreen(AlarmSettings alarmSettings) async {
    await Navigator.of(context, rootNavigator: true).push(MaterialPageRoute(
      builder: (context) => AlarmRingView(alarmSettings: alarmSettings),
    ));
  }

  @override
  void dispose() {
    subscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const FloatingButton(),
      body: const SafeArea(
        child: Body(),
      ),
    );
  }
}
