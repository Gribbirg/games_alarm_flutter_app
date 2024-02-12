import 'package:hive_flutter/hive_flutter.dart';

part 'alarm_result.g.dart';

@HiveType(typeId: 3)
class AlarmResult {
  @HiveField(0)
  int time;

  @HiveField(1)
  int score;

  AlarmResult({required this.time, required this.score});

  @override
  String toString() {
    return 'AlarmResult{time: $time, score: $score}';
  }
}
