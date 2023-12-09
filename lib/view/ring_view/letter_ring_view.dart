part of 'ring_view.dart';

class _Letters extends StatefulWidget {
  const _Letters({
    required this.callback,
  });
  final void Function() callback;
  @override
  State<_Letters> createState() => __LettersState();
}

class __LettersState extends State<_Letters> {
  static const _chars = 'abcdefghijklmnopqrstuvwxyz';
  // static const _chars =
  //     'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
  final Random _rnd = Random();
  String targetString = "";
  String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
      length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));

  final _answerController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    setState(() {
      targetString = getRandomString(15);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          NeumorphicText(
            targetString,
            style: const NeumorphicStyle(
              color: Colors.black,
            ),
            textStyle: NeumorphicTextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          Neumorphic(
            style: const NeumorphicStyle(depth: -5),
            margin: const EdgeInsets.all(8),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextFormField(
              validator: (value) {
                if (value != targetString) {
                  return "Incorrect Answer";
                }
                return null;
              },
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Answer',
                // contentPadding: EdgeInsets.all(8),
                errorStyle: TextStyle(fontSize: 14),
              ),
              controller: _answerController,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NeumorphicButton(
                onPressed: () {
                  setState(() {
                    targetString = getRandomString(15);
                  });
                },
                child: Text(
                  "Reset Text",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              NeumorphicButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    widget.callback();
                    Navigator.pop(context);
                  }
                },
                child: Text(
                  "Stop",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

void _snooze(Duration duration, AlarmSettings alarmSettings) {
  final now = DateTime.now();
  Alarm.set(
    alarmSettings: alarmSettings.copyWith(
      dateTime: DateTime(
        now.year,
        now.month,
        now.day,
        now.hour,
        now.minute,
        0,
        0,
      ).add(duration),
    ),
  );
}
