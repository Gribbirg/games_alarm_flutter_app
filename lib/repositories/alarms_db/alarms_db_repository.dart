import 'dart:developer';

import 'package:games_alarm_flutter_app/repositories/alarms_db/alarms_db.dart';
import 'package:hive_flutter/hive_flutter.dart';

class AlarmsDBRepository implements AbstractAlarmsDBRepository {
  final Box box;

  AlarmsDBRepository(this.box);

  @override
  Future<List<Alarm>> getAlarmsList() async {
    log('Read data from db: ${box.toMap()}');
    return box.values.whereType<Alarm>().toList();
  }

  @override
  Future<void> setAlarmsList(List<Alarm> alarmsList) async {
    log('Put data to db: $alarmsList');
    box.addAll(alarmsList);
  }

  @override
  Future<Map<int, Alarm>> getAlarmsMap() async {
    var res = <int, Alarm>{};

    for (var key in box.keys) {
      res[key as int] = box.get(key) as Alarm;
    }

    return res;
  }

  @override
  Future<void> deleteAlarm(int alarmId) async {
    box.delete(alarmId);
  }
}