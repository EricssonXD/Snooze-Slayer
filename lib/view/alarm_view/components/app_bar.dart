import 'package:alarm/alarm.dart';
import 'package:clock_analog/services/alarm_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../common_widget/soft_button.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            Alarm.stopAll();
          },
          child: SvgPicture.asset('assets/icons/Settings.svg'),
        ),
        GestureDetector(
          onTap: () {
            MyAlarm.setAlarm(
                TimeOfDay.fromDateTime(
                    DateTime.now().add(const Duration(minutes: 1))),
                context);
          },
          child: CircularSoftButton(
            radius: 20,
            icon: const Icon(
              Icons.settings,
              color: Colors.pink,
            ),
          ),
        )
      ],
    );
  }
}
