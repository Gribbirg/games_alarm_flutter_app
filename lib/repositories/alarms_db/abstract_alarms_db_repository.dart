import 'models/models.dart';

abstract class AbstractAlarmsDBRepository {
  Future<AlarmsWeek> getAlarmsWeek();
  Future<void> setAlarmsWeek(AlarmsWeek alarmsWeek);
}