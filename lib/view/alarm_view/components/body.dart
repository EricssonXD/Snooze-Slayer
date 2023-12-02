import 'package:flutter/material.dart';

import 'alarm_list.dart';
import 'app_bar.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: MyAppBar(),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            'Alarm',
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(color: Colors.black, fontSize: 50),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Expanded(child: AlarmList()),
      ],
    );
  }
}
