abstract class AbstractDateTimeRepository {
  Future<List<DateTime>> getWeekDateTimeList({int weekShift = 0});
  Future<DateTime> getToday();
}