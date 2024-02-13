part of 'alarms_list_block.dart';

abstract class AlarmsListState extends Equatable {}

class AlarmsListInitial extends AlarmsListState {
  @override
  List<Object?> get props => [];
}

class AlarmsListLoading extends AlarmsListState {
  @override
  List<Object?> get props => [];
}

class AlarmsListLoaded extends AlarmsListState {
  final List<Alarm> alarmsList;
  AlarmsListLoaded(this.alarmsList);

  @override
  List<Object?> get props => [alarmsList];
}

class AlarmsMapLoaded extends AlarmsListState {
  final Map<int, Alarm> alarmsMap;

  AlarmsMapLoaded(this.alarmsMap);

  @override
  List<Object?> get props => [alarmsMap];
}

class AlarmsListFailure extends AlarmsListState {

  final Object? exception;

  AlarmsListFailure([this.exception]);

  @override
  List<Object?> get props => [];
}
