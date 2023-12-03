import 'package:clock_analog/model/alarm_model.dart';

abstract class AlarmStates {}

class NoData extends AlarmStates {}

class HasData extends AlarmStates {
  HasData(this.alarms);
  List<AlarmModel> alarms;
}

class AddState extends AlarmStates {}

class RemoveState extends AlarmStates {}

class EnableState extends AlarmStates {}

class DisableState extends AlarmStates {}
