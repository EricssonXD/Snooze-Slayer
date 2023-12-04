import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:snooze_slayer/view/alarm_view/alarm_edit_view.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: NeumorphicFloatingActionButton(
        style: const NeumorphicStyle(
          boxShape: NeumorphicBoxShape.circle(),
          lightSource: LightSource.topLeft,
        ),
        child: const Icon(
          Icons.add,
          color: Colors.pinkAccent,
          size: 30,
        ),
        onPressed: () {
          Navigator.of(context, rootNavigator: true).push(
              MaterialPageRoute(builder: (context) => const AlarmEditView()));
        },
      ),
    );
  }
}
