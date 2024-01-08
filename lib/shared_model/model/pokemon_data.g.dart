// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PokemonData _$$_PokemonDataFromJson(Map<String, dynamic> json) =>
    _$_PokemonData(
      id: json['id'] as int,
      name: json['name'] as String,
      height: json['height'] as int?,
      types: (json['types'] as List<dynamic>)
          .map((e) => NamedApiResourceData.fromJson(e as Map<String, dynamic>))
          .toList(),
      imageUrl: json['imageUrl'] as String,
      abilities: (json['abilities'] as List<dynamic>)
          .map((e) => AbilityData.fromJson(e as Map<String, dynamic>))
          .toList(),
      forms: (json['forms'] as List<dynamic>)
          .map((e) => NamedApiResourceData.fromJson(e as Map<String, dynamic>))
          .toList(),
      moves: (json['moves'] as List<dynamic>)
          .map((e) => PokemonMoveData.fromJson(e as Map<String, dynamic>))
          .toList(),
      stats: (json['stats'] as List<dynamic>)
          .map((e) => PokemonStatData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PokemonDataToJson(_$_PokemonData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'height': instance.height,
      'types': instance.types,
      'imageUrl': instance.imageUrl,
      'abilities': instance.abilities,
      'forms': instance.forms,
      'moves': instance.moves,
      'stats': instance.stats,
    };
