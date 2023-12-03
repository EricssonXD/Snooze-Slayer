import 'package:clock_analog/model/alarm_model.dart';
import 'package:flutter/material.dart';

class AlarmEditView extends StatefulWidget {
  const AlarmEditView({
    super.key,
    required this.alarm,
  });
  final AlarmModel alarm;
  @override
  State<AlarmEditView> createState() => _AlarmEditViewState();
}

class _AlarmEditViewState extends State<AlarmEditView> {
  @override
  void initState() {
    super.initState();
    alarm = widget.alarm;
  }

  late final AlarmModel alarm;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          RichText(
              text: TextSpan(children: [
            TextSpan(
                text: '${alarm.hour}:${alarm.min}',
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      color: Colors.black54,
                      fontSize: 30,
                    )),
            TextSpan(
                text: " ${alarm.period}",
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge!
                    .copyWith(color: Colors.black54, fontSize: 17))
          ])),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
          child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Cancel"),
            ),
          )
        ],
      )),
    );
  }
}
