import 'models/models.dart';

abstract class AbstractAlarmsDBRepository {
  Future<AlarmsWeek> getAlarmsWeek({int weekShift = 0});
  Future<void> setAlarmsWeek(AlarmsWeek alarmsWeek);
}