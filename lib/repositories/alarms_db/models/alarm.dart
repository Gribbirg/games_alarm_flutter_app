import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'models.dart';

part 'alarm.g.dart';

@HiveType(typeId: 1)
class Alarm extends Equatable {
  @HiveField(0)
  final int id;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final int hour;

  @HiveField(3)
  final int minute;

  @HiveField(4)
  final List<AlarmResult> results;

  @HiveField(5)
  final bool vibration;

  @HiveField(6)
  final bool on;

  const Alarm(
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

  @override
  List<Object?> get props => [id, name, hour, minute, results, vibration, on];
}
