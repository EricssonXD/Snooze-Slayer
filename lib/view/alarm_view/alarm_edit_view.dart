import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:snooze_slayer/model/alarm_model.dart';
import 'package:snooze_slayer/res/theme.dart';
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
  final _titleTextController = TextEditingController();
  late AlarmRingType _ringType;

  @override
  void initState() {
    super.initState();
    alarm = widget.alarm?.copyWith() ??
        AlarmModel(hour: DateTime.now().hour, minute: DateTime.now().minute);
    _ringType = alarm.ringType;
  }

  late final AlarmModel alarm;

  void saveAlarm(BuildContext context) {
    AlarmManager().insert(
      alarm
        ..ringType = _ringType
        ..title = _titleTextController.text,
    );
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
    Widget bottomButtons = Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: NeumorphicButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Center(
                child: Text(
                  "Cancel",
                  style: TextStyle(color: MyTheme.highlightColor),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: NeumorphicButton(
              onPressed: () => saveAlarm(context),
              child: const Center(
                child: Text(
                  "Save",
                  style: TextStyle(color: MyTheme.highlightColor),
                ),
              ),
            ),
          ),
        ),
      ],
    );

    var neumorphicRadioStyle = const NeumorphicRadioStyle(
      selectedColor: MyTheme.highlightColor,
    );
    Widget ringTypeSelector = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        NeumorphicRadio<AlarmRingType>(
          groupValue: _ringType,
          value: AlarmRingType.normal,
          style: neumorphicRadioStyle,
          onChanged: (value) =>
              setState(() => _ringType = AlarmRingType.normal),
          child: SizedBox(
            height: 40,
            width: 100,
            child: Center(
                child: Text(
              "Normal",
              style: TextStyle(
                color: _ringType == AlarmRingType.normal ? Colors.white : null,
              ),
            )),
          ),
        ),
        const SizedBox(width: 15),
        NeumorphicRadio<AlarmRingType>(
          groupValue: _ringType,
          value: AlarmRingType.letters,
          style: neumorphicRadioStyle,
          onChanged: (value) =>
              setState(() => _ringType = AlarmRingType.letters),
          child: SizedBox(
            height: 40,
            width: 100,
            child: Center(
              child: Text(
                "Letters",
                style: TextStyle(
                  color:
                      _ringType == AlarmRingType.letters ? Colors.white : null,
                ),
              ),
            ),
          ),
        ),
      ],
    );
    return Scaffold(
      body: SizedBox.expand(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            timeText,
            Neumorphic(
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              style: const NeumorphicStyle(depth: -4),
              child: TextField(
                controller: _titleTextController,
                cursorColor: MyTheme.highlightColor,
                decoration: const InputDecoration.collapsed(
                  hintText: "Alarm Name",
                ),
              ),
            ),
            const SizedBox(height: 15),
            ringTypeSelector,
            const Spacer(),
            bottomButtons,
          ],
        ),
      ),
    );
  }
}
