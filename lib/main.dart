import 'package:flutter/material.dart';
import 'package:games_alarm_flutter_app/features/home/view.dart';

void main() {
  runApp(const GamesAlarmApp());
}

class GamesAlarmApp extends StatefulWidget {
  const GamesAlarmApp({super.key});

  @override
  State<GamesAlarmApp> createState() => _GamesAlarmAppState();
}

class _GamesAlarmAppState extends State<GamesAlarmApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
