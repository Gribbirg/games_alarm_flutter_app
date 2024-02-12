import 'package:equatable/equatable.dart';
import 'package:games_alarm_flutter_app/repositories/alarms_db/models/models.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'alarms_week.g.dart';

@HiveType(typeId: 2)
class AlarmsWeek extends Equatable {
  @HiveField(0)
  final List<List<Alarm>> alarmsList;

  const AlarmsWeek(this.alarmsList);

  AlarmsWeek.empty() : alarmsList = List.filled(7, <Alarm>[]);

  @override
  String toString() {
    return 'AlarmsWeek{alarmsList: $alarmsList}';
  }

  @override
  List<Object?> get props => [alarmsList];
}
