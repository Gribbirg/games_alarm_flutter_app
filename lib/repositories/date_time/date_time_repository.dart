import 'package:games_alarm_flutter_app/repositories/date_time/date_time.dart';

class DateTimeRepository implements AbstractDateTimeRepository {
  @override
  Future<List<DateTime>> getWeekDateTimeList({int weekShift = 0}) async {
    var now = DateTime.now();
    var startFrom = now.subtract(Duration(days: now.weekday - 1));
    return List.generate(7, (i) => startFrom.add(Duration(days: i)));
  }

  @override
  Future<DateTime> getToday() async {
    return DateTime.now();
  }
}