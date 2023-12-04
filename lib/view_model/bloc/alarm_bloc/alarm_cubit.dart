import 'dart:async';

import 'package:clock_analog/view_model/bloc/alarm_bloc/alarm_states.dart';
import 'package:clock_analog/view_model/database_helper/database_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../model/alarm_model.dart';

class AlarmCubit extends Cubit<AlarmStates> {
  AlarmCubit() : super(NoData()) {
    initStream();
  }

  void initStream() async {
    // alarmModelStream =
  }

  Future<Stream<void>> get alarmModelStream async =>
      (await helper.isar).alarmModels.watchLazy();

  Future<StreamSubscription<void>> get subscribeList async {
    return (await alarmModelStream).listen((event) => getData());
  }

  final AlarmManager helper = AlarmManager();
  List<AlarmModel> list = [];

  void getData() async {
    helper.getData().then((value) {
      list = value;
      emit(HasData(list));
    });
  }

  Future<AlarmModel> insert(AlarmModel alarm) async {
    return await helper.insert(alarm).then((value) {
      // getData();
      return value;
    });
  }

  Future<bool> delete(AlarmModel alarm) async {
    return await helper.delete(alarm).then((value) {
      return value;
    });
  }

  Future<TimeOfDay?> addData(BuildContext context) async {
    return await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      helpText: "Set Alarm Time",
    );
    // if (picker != null) {
    //   if (context.mounted) MyAlarm.createAlarm(picker, context);
    // }
  }

  Future<Duration> getDifferenceBetweenCurrentTimeAndSelectedTime(
      TimeOfDay selectedTime) async {
    final now = DateTime.now();
    final selectedDateTime = DateTime(
        now.year, now.month, now.day, selectedTime.hour, selectedTime.minute);
    return selectedDateTime.difference(now);
  }
}
