// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_item_data.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PokemonItemAdapter extends TypeAdapter<PokemonItem> {
  @override
  final int typeId = 0;

  @override
  PokemonItem read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PokemonItem(
      name: fields[1] as String,
      url: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, PokemonItem obj) {
    writer
      ..writeByte(2)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.url);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PokemonItemAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PokemonItem _$$_PokemonItemFromJson(Map<String, dynamic> json) =>
    _$_PokemonItem(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$_PokemonItemToJson(_$_PokemonItem instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
