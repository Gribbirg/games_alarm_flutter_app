import 'package:flutter/material.dart';
import 'package:games_alarm_flutter_app/repositories/alarms_db/alarms_db.dart';
import 'package:games_alarm_flutter_app/repositories/date_time/date_time.dart';
import 'package:games_alarm_flutter_app/router/router.dart';
import 'package:games_alarm_flutter_app/theme/theme.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();

  Hive.registerAdapter(AlarmAdapter());
  Hive.registerAdapter(AlarmsWeekAdapter());
  Hive.registerAdapter(AlarmResultAdapter());

  final alarmsBox = await Hive.openBox<AlarmsWeek>('alarms_box');

  GetIt.I.registerLazySingleton<AbstractAlarmsDBRepository>(() => AlarmsDBRepository(alarmsBox));
  GetIt.I.registerLazySingleton<AbstractDateTimeRepository>(() => DateTimeRepository());

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
