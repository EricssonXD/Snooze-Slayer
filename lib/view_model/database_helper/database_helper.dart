import 'package:clock_analog/model/alarm_model.dart';
import 'package:clock_analog/services/alarm_service.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class AlarmManager {
  Isar? _isar;

  Future<Isar> get isar async {
    if (_isar != null) {
      return _isar!;
    }
    final dir = await getApplicationDocumentsDirectory();
    _isar = Isar.getInstance() ??
        await Isar.open(
          [AlarmModelSchema],
          directory: dir.path,
        );
    return _isar!;
  }

  Future<AlarmModel> insert(AlarmModel alarm) async {
    Isar dbclient = await isar;

    late final int id;
    await dbclient.writeTxn(() async {
      id = await dbclient.alarmModels.put(alarm);
    });
    alarm.id = id;
    alarm.isEnabled
        ? NativeAlarm.setAlarm(alarm)
        : NativeAlarm.deleteAlarm(alarm);

    return alarm;
  }

  Future<bool> delete(AlarmModel model) async {
    Isar isarClient = await isar;
    // final existingUser = await isarClient.alarmModels.get(newUser.id); // get
    late final bool result;
    await isarClient.writeTxn(() async {
      result = await isarClient.alarmModels.delete(model.id); // delete
    });
    NativeAlarm.deleteAlarm(model);
    return result;
  }

  Future<List<AlarmModel>> getData() async {
    Isar dbClient = await isar;
    return await dbClient.alarmModels.where().findAll();
  }
}
