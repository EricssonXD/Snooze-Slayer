import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:snooze_slayer/model/alarm_model.dart';
import 'package:snooze_slayer/view_model/database_helper/database_helper.dart';

class AlarmEditView extends StatefulWidget {
  const AlarmEditView({
    super.key,
    this.alarm,
  });
  final AlarmModel? alarm;
  @override
  State<AlarmEditView> createState() => _AlarmEditViewState();
}

class _AlarmEditViewState extends State<AlarmEditView> {
  @override
  void initState() {
    super.initState();
    alarm = widget.alarm?.copyWith() ??
        AlarmModel(hour: DateTime.now().hour, minute: DateTime.now().minute);
  }

  late final AlarmModel alarm;

  void saveAlarm(BuildContext context) {
    AlarmManager().insert(alarm);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    Widget timeText = InkWell(
      onTap: () async {
        final time = await showTimePicker(
          context: context,
          initialTime: TimeOfDay(hour: alarm.hour, minute: alarm.minute),
          helpText: "Set Alarm Time",
        );

        if (time != null) {
          setState(() {
            alarm
              ..hour = time.hour
              ..minute = time.minute;
          });
        }
      },
      child: RichText(
          text: TextSpan(children: [
        TextSpan(
            text: '${alarm.hour}:${alarm.minute}',
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  color: Colors.black54,
                  fontSize: 30,
                )),
      ])),
    );
    return Scaffold(
      body: SizedBox.expand(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            timeText,
            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: NeumorphicButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: const Center(child: Text("Cancel")),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: NeumorphicButton(
                      onPressed: () => saveAlarm(context),
                      child: const Center(child: Text("Save")),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
