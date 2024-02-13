import 'dart:math';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../repositories/alarms_db/alarms_db.dart';

part 'alarms_list_event.dart';

part 'alarms_list_state.dart';

class AlarmsListBlock extends Bloc<AlarmsListEvent, AlarmsListState> {
  final AbstractAlarmsDBRepository alarmsDbRepository;

  AlarmsListBlock(this.alarmsDbRepository) : super(AlarmsListInitial()) {
    on<LoadAlarmsList>(_load);
    on<LoadAlarmsMap>(_loadMap);
    on<WriteAlarmsList>(_write);
    on<DeleteAlarmEvent>(_delete);
  }

  Future<void> _load(
      LoadAlarmsList event, Emitter<AlarmsListState> emit) async {
    try {
      emit(AlarmsListLoading());
      final alarmsWeek = await alarmsDbRepository.getAlarmsList();
      emit(AlarmsListLoaded(alarmsWeek));
    } catch (e) {
      emit(AlarmsListFailure(e));
    }
  }

  Future<void> _loadMap(
      LoadAlarmsMap event, Emitter<AlarmsListState> emit) async {
    try {
      emit(AlarmsListLoading());
      final alarmsWeek = await alarmsDbRepository.getAlarmsMap();
      emit(AlarmsMapLoaded(alarmsWeek));
    } catch (e) {
      emit(AlarmsListFailure(e));
    }
  }

  Future<void> _write(
      WriteAlarmsList event, Emitter<AlarmsListState> emit) async {
    alarmsDbRepository.setAlarmsList(event.alarmsList);
    _loadMap(LoadAlarmsMap(), emit);
  }

  Future<void> _delete(
      DeleteAlarmEvent event, Emitter<AlarmsListState> emit) async {
    alarmsDbRepository.deleteAlarm(event.alarmId);
    _loadMap(LoadAlarmsMap(), emit);
  }
}
