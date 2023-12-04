import 'dart:async';

import 'package:alarm/alarm.dart';
import 'package:clock_analog/res/constants.dart';
import 'package:clock_analog/view/alarm_view/alarm_ring_view.dart';
import 'package:clock_analog/view/alarm_view/components/body.dart';
import 'package:clock_analog/view/alarm_view/components/floating_button.dart';
import 'package:clock_analog/view_model/bloc/alarm_bloc/alarm_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AlarmScreen extends StatefulWidget {
  const AlarmScreen({super.key});
  @override
  State<AlarmScreen> createState() => _AlarmScreenState();
}

class _AlarmScreenState extends State<AlarmScreen> {
  static StreamSubscription<AlarmSettings>? subscription;

  @override
  void initState() {
    super.initState();
    BlocProvider.of<AlarmCubit>(context).getData();
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
