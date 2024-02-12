import 'dart:developer';

import 'package:games_alarm_flutter_app/repositories/alarms_db/abstract_alarms_db_repository.dart';
import 'package:games_alarm_flutter_app/repositories/alarms_db/models/alarms_week.dart';
import 'package:hive_flutter/hive_flutter.dart';

class AlarmsDBRepository implements AbstractAlarmsDBRepository {
  final Box box;

  AlarmsDBRepository(this.box);

  @override
  Future<AlarmsWeek> getAlarmsWeek({int weekShift = 0}) async {
    log('Read data from db: ${box.values.toList().firstOrNull ?? AlarmsWeek.empty()}');
    return box.values.toList().firstOrNull ?? AlarmsWeek.empty();
  }

  @override
  Future<void> setAlarmsWeek(AlarmsWeek alarmsWeek) async {
    log('Put data to db: $alarmsWeek');
    box.put(0, alarmsWeek);
  }
}