import 'package:flutter/material.dart';
import 'package:games_alarm_flutter_app/features/home/view.dart';
import 'package:games_alarm_flutter_app/router/router.dart';
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
  final _router = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'РазБудильник',
      theme: getTheme(),
      darkTheme: getTheme(darkMode: true),
      themeMode: ThemeMode.system,
      routerConfig: _router.config(),
    );
  }
}
