import 'package:hive_flutter/hive_flutter.dart';

import 'models.dart';

part 'alarm.g.dart';

@HiveType(typeId: 1)
class Alarm {
  @HiveField(0)
  final int id;

  @HiveField(1)
  String name;

  @HiveField(2)
  int hour;

  @HiveField(3)
  int minute;

  @HiveField(4)
  List<AlarmResult> results;

  @HiveField(5)
  bool vibration;

  @HiveField(6)
  bool on;

  Alarm(
      {this.id = 0,
      required this.name,
      required this.hour,
      required this.minute,
      required this.results,
      required this.vibration,
      required this.on});

  @override
  String toString() {
    return 'Alarm{id: $id, name: $name, hour: $hour, minute: $minute, results: $results, vibration: $vibration, on: $on}';
  }
}
