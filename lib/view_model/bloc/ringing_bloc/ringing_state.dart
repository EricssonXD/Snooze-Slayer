part of 'ringing_cubit.dart';

@freezed
class RingingState with _$RingingState {
  const factory RingingState.initial() = _Initial;

  const factory RingingState.ringing(AlarmSettings alarmSettings) = _Ringing;

  const factory RingingState.idleState() = _StoppedRinging;
}
