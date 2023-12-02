class AlarmModel {
  String? key;
  int? hour;
  int? min;
  String? period;
  String? title;
  String? day;
  bool? isEnabled;
  int? alarmId;

  AlarmModel(
      {required this.key,
      required this.hour,
      required this.period,
      required this.min,
      required this.day,
      required this.isEnabled,
      required this.alarmId,
      required this.title});

  AlarmModel.fromMap(Map<String, dynamic> map) {
    key = map['key'];
    hour = int.tryParse(map['hour']);
    min = int.tryParse(map['min']);
    period = map['period'];
    title = map['title'];
    day = map['day'];
    isEnabled = map['isEnabled'] is bool
        ? map['isEnabled']
        : bool.tryParse(map['isEnabled']);
    alarmId = int.tryParse(map['alarmId']);
  }

  Map<String, Object?> toMap() {
    return {
      'key': key,
      'hour': hour,
      'min': min,
      'period': period,
      'title': title,
      'day': day,
      'isEnabled': isEnabled.toString(),
      'alarmId': alarmId
    };
  }
}
