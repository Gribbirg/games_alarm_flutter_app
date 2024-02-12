// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarms_week.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AlarmsWeekAdapter extends TypeAdapter<AlarmsWeek> {
  @override
  final int typeId = 2;

  @override
  AlarmsWeek read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AlarmsWeek(
      (fields[0] as List)
          .map((dynamic e) => (e as List).cast<Alarm>())
          .toList(),
    );
  }

  @override
  void write(BinaryWriter writer, AlarmsWeek obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.alarmsList);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AlarmsWeekAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
