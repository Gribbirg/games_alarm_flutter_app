import 'package:flutter/material.dart';
import 'package:games_alarm_flutter_app/features/alarms_list/block/alarms_list_block.dart';

import '../../../repositories/alarms_db/models/alarm.dart';

class AlarmCard extends StatefulWidget {
  const AlarmCard(
      {super.key, required this.block, required this.alarm, this.id = -1});

  final Alarm alarm;
  final AlarmsListBlock block;
  final int id;

  @override
  State<AlarmCard> createState() => _AlarmCardState();
}

class _AlarmCardState extends State<AlarmCard> {
  late bool on;

  @override
  void initState() {
    on = widget.alarm.on;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.alarm.name,
                style: DefaultTextStyle
                    .of(context)
                    .style
                    .apply(fontSizeFactor: 1.5),
              ),
              PopupMenuButton(icon: const Icon(Icons.more_horiz),
                itemBuilder: (BuildContext context) {
                  return [
                    PopupMenuItem(
                      onTap: _copyAlarm, child: const Text('Копировать'),),
                    PopupMenuItem(
                      onTap: _editAlarm, child: const Text('Изменить'),),
                    PopupMenuItem(
                      onTap: _deleteAlarm, child: const Text('Удалить'),),
                  ];
                },)
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              '${widget.alarm.hour}:${widget.alarm.minute}',
              style:
              DefaultTextStyle
                  .of(context)
                  .style
                  .apply(fontSizeFactor: 2.0),
            ),
            Switch(
                value: on,
                onChanged: (state) =>
                {
                  setState(() {
                    on = state;
                  })
                }),
          ]),
        ],
      ),
    );
  }

  void _copyAlarm() {}

  void _editAlarm() {}

  void _deleteAlarm() {
    widget.block.add(DeleteAlarmEvent(widget.id));
  }
}
