part of 'alarms_list_block.dart';

abstract class AlarmsListEvent extends Equatable {}

class LoadAlarmsList extends AlarmsListEvent {
  @override
  List<Object?> get props => [];
}

class WriteAlarmsList extends AlarmsListEvent {

  final AlarmsWeek alarmsWeek;

  WriteAlarmsList(this.alarmsWeek);

  @override
  List<Object?> get props => [];
}