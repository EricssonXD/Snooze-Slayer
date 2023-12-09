part of 'ring_view.dart';

class _Normal extends StatelessWidget {
  const _Normal({required this.alarmSettings, required this.callback});
  final void Function() callback;

  final AlarmSettings alarmSettings;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        NeumorphicButton(
          onPressed: () {
            _snooze(const Duration(minutes: 3), alarmSettings);
            Navigator.pop(context);
          },
          child: Text(
            "Snooze",
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        NeumorphicButton(
          onPressed: () {
            callback();
            Navigator.pop(context);
          },
          child: Text(
            "Stop",
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      ],
    );
  }
}
