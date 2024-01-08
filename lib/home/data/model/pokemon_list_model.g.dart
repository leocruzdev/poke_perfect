// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_list_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PokemonListModelAdapter extends TypeAdapter<PokemonListModel> {
  @override
  final int typeId = 1;

  @override
  PokemonListModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PokemonListModel(
      count: fields[1] as int,
      next: fields[2] as String?,
      previous: fields[3] as String?,
      results: (fields[4] as List).cast<PokemonItem>(),
    );
  }

  @override
  void write(BinaryWriter writer, PokemonListModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(1)
      ..write(obj.count)
      ..writeByte(2)
      ..write(obj.next)
      ..writeByte(3)
      ..write(obj.previous)
      ..writeByte(4)
      ..write(obj.results);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PokemonListModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PokemonListModel _$$_PokemonListModelFromJson(Map<String, dynamic> json) =>
    _$_PokemonListModel(
      count: json['count'] as int,
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      results: (json['results'] as List<dynamic>)
          .map((e) => PokemonItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PokemonListModelToJson(_$_PokemonListModel instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };
