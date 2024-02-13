import 'models/models.dart';

abstract class AbstractAlarmsDBRepository {
  Future<List<Alarm>> getAlarmsList();

  Future<Map<int, Alarm>> getAlarmsMap();

  Future<void> setAlarmsList(List<Alarm> alarmList);

  Future<void> deleteAlarm(int alarmId);
}
