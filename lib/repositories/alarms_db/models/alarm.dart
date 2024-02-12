import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'models.dart';

part 'alarm.g.dart';

@HiveType(typeId: 1)
class Alarm extends Equatable {
  @HiveField(1)
  final String name;

  @HiveField(2)
  final int dayOfWeek;

  @HiveField(3)
  final int hour;

  @HiveField(4)
  final int minute;

  @HiveField(6)
  final bool vibration;

  @HiveField(7)
  final bool on;

  @HiveField(8)
  final List<AlarmResult> results;

  const Alarm({
    required this.name,
    required this.dayOfWeek,
    required this.hour,
    required this.results,
    required this.vibration,
    required this.on,
    required this.minute,
  });

  @override
  String toString() {
    return 'Alarm{name: $name, dayOfWeek: $dayOfWeek, hour: $hour, minute: $minute, vibration: $vibration, on: $on, results: $results}';
  }

  @override
  List<Object?> get props => [name, dayOfWeek, hour, minute, results, vibration, on];
}
