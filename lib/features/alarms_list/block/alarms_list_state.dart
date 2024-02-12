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
  final AlarmsWeek alarmsWeek;
  AlarmsListLoaded(this.alarmsWeek);

  @override
  List<Object?> get props => [alarmsWeek];
}

class AlarmsListFailure extends AlarmsListState {

  final Object? exception;

  AlarmsListFailure([this.exception]);

  @override
  List<Object?> get props => [];
}
