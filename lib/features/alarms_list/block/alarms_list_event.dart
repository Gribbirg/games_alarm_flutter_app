part of 'alarms_list_block.dart';

abstract class AlarmsListEvent extends Equatable {}

class LoadAlarmsList extends AlarmsListEvent {
  @override
  List<Object?> get props => [];
}

class LoadAlarmsMap extends AlarmsListEvent {
  @override
  List<Object?> get props => [];
}

class WriteAlarmsList extends AlarmsListEvent {
  final List<Alarm> alarmsList;

  WriteAlarmsList(this.alarmsList);

  @override
  List<Object?> get props => [];
}

class DeleteAlarmEvent extends AlarmsListEvent {
  final int alarmId;

  DeleteAlarmEvent(this.alarmId);

  @override
  List<Object?> get props => [];
}
