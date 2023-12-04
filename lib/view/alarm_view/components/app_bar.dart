import 'package:alarm/alarm.dart';
import 'package:clock_analog/model/alarm_model.dart';
import 'package:clock_analog/view_model/database_helper/database_helper.dart';
import 'package:flutter/foundation.dart';
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
            if (kDebugMode) {
              AlarmManager().insert(AlarmModel(
                hour: DateTime.now().hour,
                minute: DateTime.now().minute + 1,
                title: "Alarm Test",
              ));
            }
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
