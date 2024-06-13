// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'layout_sections_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LayoutSectionsModelAdapter extends TypeAdapter<LayoutSectionsModel> {
  @override
  final int typeId = 0;

  @override
  LayoutSectionsModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LayoutSectionsModel(
      sections: (fields[0] as List).cast<LayoutSection>(),
    );
  }

  @override
  void write(BinaryWriter writer, LayoutSectionsModel obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.sections);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LayoutSectionsModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class LayoutSectionAdapter extends TypeAdapter<LayoutSection> {
  @override
  final int typeId = 1;

  @override
  LayoutSection read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LayoutSection(
      id: fields[0] as String,
      title: fields[1] as String,
      isVisible: fields[2] as bool,
      order: fields[3] as int,
    );
  }

  @override
  void write(BinaryWriter writer, LayoutSection obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.isVisible)
      ..writeByte(3)
      ..write(obj.order);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LayoutSectionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
