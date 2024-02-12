import 'package:flutter/material.dart';
import 'package:games_alarm_flutter_app/features/home/view.dart';
import 'package:games_alarm_flutter_app/theme/theme.dart';

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
      theme: getTheme(),
      darkTheme: getTheme(darkMode: true),
      themeMode: ThemeMode.system,
      home: const HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
