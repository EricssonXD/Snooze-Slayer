import 'package:clock_analog/model/alarm_model.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class DbHelper {
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

  Future<AlarmModel> insert(AlarmModel model) async {
    Isar dbclient = await isar;

    await dbclient.writeTxn(() async {
      await dbclient.alarmModels.put(model);
    });

    return model;
  }

  Future<bool> delete(AlarmModel model) async {
    Isar isarClient = await isar;
    // final existingUser = await isarClient.alarmModels.get(newUser.id); // get
    late final bool result;
    await isarClient.writeTxn(() async {
      result = await isarClient.alarmModels.delete(model.id); // delete
    });
    return result;
  }

  Future<List<AlarmModel>> getData() async {
    Isar dbClient = await isar;
    return await dbClient.alarmModels.where().findAll();
  }
}
