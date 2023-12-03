import 'package:clock_analog/model/alarm_model.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class DbHelper {
  Isar? _isar;
  Stream<void>? userChanged;

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
    userChanged = _isar!.alarmModels.watchLazy();
    return _isar!;
  }

  Future<AlarmModel> insert(AlarmModel model) async {
    var dbclient = await isar;

    await dbclient.writeTxn(() async {
      await dbclient.alarmModels.put(model);
    });

    return model;
  }

  Future<bool> delete(AlarmModel model) async {
    var isarClient = await isar;
    // final existingUser = await isarClient.alarmModels.get(newUser.id); // get
    late final bool result;
    await isarClient.writeTxn(() async {
      result = await isarClient.alarmModels.delete(model.id); // delete
    });
    return result;
  }

  Future<List<AlarmModel>> getData() async {
    var dbClient = await isar;
    return dbClient.alarmModels.where().findAll();
  }
}
