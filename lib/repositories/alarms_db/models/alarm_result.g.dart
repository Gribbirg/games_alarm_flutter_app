// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_result.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AlarmResultAdapter extends TypeAdapter<AlarmResult> {
  @override
  final int typeId = 3;

  @override
  AlarmResult read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AlarmResult(
      time: fields[0] as int,
      score: fields[1] as int,
      dateTime: fields[2] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, AlarmResult obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.time)
      ..writeByte(1)
      ..write(obj.score)
      ..writeByte(2)
      ..write(obj.dateTime);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AlarmResultAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
