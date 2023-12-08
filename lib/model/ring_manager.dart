import 'dart:async';

import 'package:alarm/alarm.dart';
import 'package:flutter/material.dart';
import 'package:snooze_slayer/view/ring_view/alarm_ring_view.dart';

class RingManager {
  factory RingManager() => _instance;
  factory RingManager.init({required GlobalKey<NavigatorState> navigationKey}) {
    RingManager.navigationKey = navigationKey;
    debugPrint("Initalized RingManager");
    Alarm.ringStream.stream
        .asBroadcastStream()
        .first
        .then((value) => print(value.dateTime));
    return _instance;
  }
  static final RingManager _instance = RingManager._internal();
  static StreamSubscription<AlarmSettings>? subscription;
  static late final GlobalKey<NavigatorState> navigationKey;

  RingManager._internal() {
    subscription ??= Alarm.ringStream.stream.asBroadcastStream().listen(
      (alarmSettings) {
        onStartRinging(navigationKey.currentContext, alarmSettings);
        debugPrint("Your Phone Linging");
      },
    );
    // if (!Alarm.ringStream.hasListener) {
    // } else {
    //   if (subscription == null) throw ("Already has a listener to ringstream");
    // }
  }

  void onStartRinging(BuildContext? context, AlarmSettings alarmSettings) {
    if (context == null) {
      debugPrint("OH no theres no context to do this ");
      return;
    }
    Navigator.of(context, rootNavigator: true).push(
      MaterialPageRoute(
          builder: (context) => AlarmRingView(alarmSettings: alarmSettings)),
    );
  }

//Debug
  // void startRinging(BuildContext context) {
  //   Navigator.of(context, rootNavigator: true).push(
  //     MaterialPageRoute(builder: (context) => const Scaffold(body: Text("YO"))),
  //   );
  // }
}
