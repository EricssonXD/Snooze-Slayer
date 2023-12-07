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
  }

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
  }

  // Future<void> navigateToRingScreen(AlarmSettings alarmSettings) async {
  //   await Navigator.of(context, rootNavigator: true).push(MaterialPageRoute(
  //     builder: (context) => AlarmRingView(alarmSettings: alarmSettings),
  //   ));
  // }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingButton(),
      body: SafeArea(
        child: Body(),
      ),
    );
  }
}
