import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:games_alarm_flutter_app/repositories/alarms_db/alarms_db.dart';
import 'package:get_it/get_it.dart';

@RoutePage()
class AlarmsListPage extends StatefulWidget {
  const AlarmsListPage({super.key, required this.title});

  final String title;

  @override
  State<AlarmsListPage> createState() => _AlarmsListPageState();
}

class _AlarmsListPageState extends State<AlarmsListPage> {
  final alarmsDbRepository = GetIt.I<AbstractAlarmsDBRepository>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Будильники'),
      ),
      body: Column(
        children: [
          // const WeekWidget(),
          ElevatedButton(
              onPressed: () async {
                alarmsDbRepository.setAlarmsWeek(AlarmsWeek(List.filled(7, [
                  Alarm(
                      name: 'Будильник',
                      hour: 8,
                      minute: 30,
                      results: [AlarmResult(time: 100, score: 55)],
                      vibration: true,
                      on: true)
                ])));
              },
              child: const Text('add')),
          ElevatedButton(
              onPressed: () async {
                alarmsDbRepository.getAlarmsWeek();
              },
              child: const Text('get')),
        ],
      ),
    );
  }
}
