import 'models/models.dart';

abstract class AbstractAlarmsDBRepository {
  Future<List<Alarm>> getAlarmsList();
  Future<void> setAlarmsList(List<Alarm> alarmList);
}