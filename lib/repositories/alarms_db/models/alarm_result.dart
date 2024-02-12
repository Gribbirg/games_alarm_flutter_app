import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'alarm_result.g.dart';

@HiveType(typeId: 3)
class AlarmResult extends Equatable {
  @HiveField(0)
  final int time;

  @HiveField(1)
  final int score;

  @HiveField(2)
  final DateTime dateTime;

  const AlarmResult(
      {required this.time, required this.score, required this.dateTime});

  @override
  String toString() {
    return 'AlarmResult{dateTime: $dateTime}';
  }

  @override
  List<Object?> get props => [time, score, dateTime];
}
