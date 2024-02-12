import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:games_alarm_flutter_app/features/alarms_list/block/alarms_list_block.dart';
import 'package:games_alarm_flutter_app/features/alarms_list/widgets/alarm_card.dart';
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
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            ElevatedButton(
                onPressed: () async {
                  _alarmsListBlock.add(WriteAlarmsList(List.generate(
                    7,
                    (index) => Alarm(
                        name: 'Будильник ${8 - index}',
                        dayOfWeek: index,
                        hour: 8,
                        minute: 30,
                        results: [
                          AlarmResult(
                              time: 100, score: 55, dateTime: DateTime.now())
                        ],
                        vibration: true,
                        on: true),
                  )));
                },
                child: const Text('add')),
            ElevatedButton(
                onPressed: () async {
                  _alarmsListBlock.add(LoadAlarmsList());
                },
                child: const Text('get')),
          ]),
          BlocBuilder<AlarmsListBlock, AlarmsListState>(
              bloc: _alarmsListBlock,
              builder: (context, state) {
                if (state is AlarmsListLoaded) {
                  return Expanded(
                      child: PageView(
                    controller: PageController(),
                    children: _getAlarmsListView(state.alarmsList),
                  ));
                }
                if (state is AlarmsListFailure) {
                  return const Text('Fail!');
                }
                return const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [CircularProgressIndicator()]);
              }),
        ],
      ),
    );
  }

  List<ListView> _getAlarmsListView(List<Alarm> alarmsList) {
    var res = <ListView>[];
    for (int i = 0; i < 7; i++) {
      var alarms =
          alarmsList.where((element) => element.dayOfWeek == i).toList();
      res.add(ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: alarms.length,
        itemBuilder: (context, j) => AlarmCard(
          alarm: alarms[j],
          block: _alarmsListBlock,
        ),
      ));
    }
    return res;
  }
}
