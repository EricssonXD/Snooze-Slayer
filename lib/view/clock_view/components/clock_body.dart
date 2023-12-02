import 'package:clock_analog/view/clock_view/components/time_text.dart';
import 'package:flutter/material.dart';

import 'app_bar.dart';
import 'clock.dart';

class ClockBody extends StatelessWidget {
  const ClockBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 20,
        ),
        ClockAppBar(),
        // Text(
        //   'Islamabad/Karachi, PAK | GMT',
        //   style: TextStyle(color: Colors.grey, fontSize: 14),
        // ),
        // SizedBox(
        //   height: 10,
        // ),
        TimeText(),
        SizedBox(
          height: 30,
        ),
        Clock(),
        Spacer(),
        // WorldList(),
        // Spacer()
      ],
    );
  }
}
