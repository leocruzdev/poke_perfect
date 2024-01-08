// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_stat_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PokemonStatData _$$_PokemonStatDataFromJson(Map<String, dynamic> json) =>
    _$_PokemonStatData(
      baseStat: json['base_stat'] as int,
      stat: NamedApiResourceData.fromJson(json['stat'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PokemonStatDataToJson(_$_PokemonStatData instance) =>
    <String, dynamic>{
      'base_stat': instance.baseStat,
      'stat': instance.stat,
    };
