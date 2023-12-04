import 'package:clock_analog/model/alarm_model.dart';
import 'package:clock_analog/view_model/database_helper/database_helper.dart';
import 'package:flutter/material.dart';

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
    var timeText = InkWell(
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
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text("Cancel"),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () => saveAlarm(context),
              child: const Text("Save"),
            ),
          ),
        ],
      )),
    );
  }
}
