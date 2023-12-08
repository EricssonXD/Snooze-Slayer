import 'dart:async';

import 'package:alarm/alarm.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:snooze_slayer/view/ring_view/alarm_ring_view.dart';

part 'ringing_state.dart';
part 'ringing_cubit.freezed.dart';

class RingingCubit extends Cubit<RingingState> {
  RingingCubit() : super(const RingingState.initial()) {
    StreamSubscription<AlarmSettings>? subscription;

    subscription ??= Alarm.ringStream.stream.asBroadcastStream().listen(
      (alarmSettings) {
        // onStartRinging(navigationKey.currentContext, alarmSettings);
        emit(RingingState.ringing(alarmSettings));
        debugPrint("Your Phone Linging");
      },
    );
  }

  void showRingingScreen(BuildContext context, AlarmSettings alarmSettings) {
    // if (context == null) {
    //   debugPrint("OH no theres no context to do this ");
    //   return;
    // }
    Navigator.of(context, rootNavigator: true).push(
      MaterialPageRoute(
          builder: (context) => AlarmRingView(alarmSettings: alarmSettings)),
    );
  }
}
