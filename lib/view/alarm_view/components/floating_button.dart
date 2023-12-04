import 'package:snooze_slayer/view/alarm_view/alarm_edit_view.dart';
import 'package:flutter/material.dart';

import '../../common_widget/soft_button.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context, rootNavigator: true).push(
            MaterialPageRoute(builder: (context) => const AlarmEditView()));
      },
      child: CircularSoftButton(
        radius: 30,
        icon: const Icon(
          Icons.add,
          color: Colors.pinkAccent,
          size: 30,
        ),
      ),
    );
  }
}
