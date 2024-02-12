import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:games_alarm_flutter_app/features/alarms_list/block/alarms_list_block.dart';
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
  final _alarmsListBlock =
      AlarmsListBlock(GetIt.I<AbstractAlarmsDBRepository>());

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
                _alarmsListBlock.add(WriteAlarmsList(AlarmsWeek(List.generate(7, (index) => [
                  Alarm(
                      name: 'Будильник ${8 - index}',
                      hour: 8,
                      minute: 30,
                      results: [AlarmResult(time: 100, score: 55)],
                      vibration: true,
                      on: true)
                ]))));
              },
              child: const Text('add')),
          ElevatedButton(
              onPressed: () async {
                _alarmsListBlock.add(LoadAlarmsList());
              },
              child: const Text('get')),
          BlocBuilder<AlarmsListBlock, AlarmsListState>(
              bloc: _alarmsListBlock,
              builder: (context, state) {
                if (state is AlarmsListLoaded) {
                  return Text('Data loaded: ${state.alarmsWeek}');
                }
                if (state is AlarmsListFailure) {
                  return const Text('Fail!');
                }
                return const Center(child: CircularProgressIndicator());
              }
          ),
        ],
      ),
    );
  }
}
