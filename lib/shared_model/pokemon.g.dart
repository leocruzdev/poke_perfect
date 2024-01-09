// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon.dart';

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

_$_Pokemon _$$_PokemonFromJson(Map<String, dynamic> json) => _$_Pokemon(
      id: json['id'] as int,
      name: json['name'] as String,
      baseExperience: json['base_experience'] as int,
      height: json['height'] as int,
      isDefault: json['is_default'] as bool,
      order: json['order'] as int,
      weight: json['weight'] as int,
      abilities: (json['abilities'] as List<dynamic>)
          .map((e) => PokemonAbility.fromJson(e as Map<String, dynamic>))
          .toList(),
      forms: (json['forms'] as List<dynamic>)
          .map((e) => PokemonItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      gameIndices: (json['game_indices'] as List<dynamic>)
          .map((e) => VersionGameIndex.fromJson(e as Map<String, dynamic>))
          .toList(),
      heldItems: (json['held_items'] as List<dynamic>)
          .map((e) => PokemonHeldItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      locationAreaEncounters: json['location_area_encounters'] as String,
      moves: (json['moves'] as List<dynamic>)
          .map((e) => PokemonMove.fromJson(e as Map<String, dynamic>))
          .toList(),
      pastTypes: (json['past_types'] as List<dynamic>)
          .map((e) => PokemonTypePast.fromJson(e as Map<String, dynamic>))
          .toList(),
      sprites: PokemonSprites.fromJson(json['sprites'] as Map<String, dynamic>),
      species: PokemonItem.fromJson(json['species'] as Map<String, dynamic>),
      stats: (json['stats'] as List<dynamic>)
          .map((e) => PokemonStat.fromJson(e as Map<String, dynamic>))
          .toList(),
      types: (json['types'] as List<dynamic>)
          .map((e) => PokemonType.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PokemonToJson(_$_Pokemon instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'base_experience': instance.baseExperience,
      'height': instance.height,
      'is_default': instance.isDefault,
      'order': instance.order,
      'weight': instance.weight,
      'abilities': instance.abilities,
      'forms': instance.forms,
      'game_indices': instance.gameIndices,
      'held_items': instance.heldItems,
      'location_area_encounters': instance.locationAreaEncounters,
      'moves': instance.moves,
      'past_types': instance.pastTypes,
      'sprites': instance.sprites,
      'species': instance.species,
      'stats': instance.stats,
      'types': instance.types,
    };

_$_PokemonAbility _$$_PokemonAbilityFromJson(Map<String, dynamic> json) =>
    _$_PokemonAbility(
      isHidden: json['is_hidden'] as bool,
      slot: json['slot'] as int,
      ability: PokemonItem.fromJson(json['ability'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PokemonAbilityToJson(_$_PokemonAbility instance) =>
    <String, dynamic>{
      'is_hidden': instance.isHidden,
      'slot': instance.slot,
      'ability': instance.ability,
    };

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

_$_VersionGameIndex _$$_VersionGameIndexFromJson(Map<String, dynamic> json) =>
    _$_VersionGameIndex(
      gameIndex: json['game_index'] as int,
      version: PokemonItem.fromJson(json['version'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_VersionGameIndexToJson(_$_VersionGameIndex instance) =>
    <String, dynamic>{
      'game_index': instance.gameIndex,
      'version': instance.version,
    };

_$_PokemonHeldItem _$$_PokemonHeldItemFromJson(Map<String, dynamic> json) =>
    _$_PokemonHeldItem(
      item: PokemonItem.fromJson(json['item'] as Map<String, dynamic>),
      versionDetails: (json['version_details'] as List<dynamic>)
          .map((e) => VersionDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PokemonHeldItemToJson(_$_PokemonHeldItem instance) =>
    <String, dynamic>{
      'item': instance.item,
      'version_details': instance.versionDetails,
    };

_$_VersionDetail _$$_VersionDetailFromJson(Map<String, dynamic> json) =>
    _$_VersionDetail(
      rarity: json['rarity'] as int,
      version: PokemonItem.fromJson(json['version'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_VersionDetailToJson(_$_VersionDetail instance) =>
    <String, dynamic>{
      'rarity': instance.rarity,
      'version': instance.version,
    };

_$_PokemonMove _$$_PokemonMoveFromJson(Map<String, dynamic> json) =>
    _$_PokemonMove(
      move: PokemonItem.fromJson(json['move'] as Map<String, dynamic>),
      versionGroupDetails: (json['version_group_details'] as List<dynamic>)
          .map(
              (e) => MoveVersionGroupDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PokemonMoveToJson(_$_PokemonMove instance) =>
    <String, dynamic>{
      'move': instance.move,
      'version_group_details': instance.versionGroupDetails,
    };

_$_MoveVersionGroupDetail _$$_MoveVersionGroupDetailFromJson(
        Map<String, dynamic> json) =>
    _$_MoveVersionGroupDetail(
      levelLearnedAt: json['level_learned_at'] as int,
      versionGroup:
          PokemonItem.fromJson(json['version_group'] as Map<String, dynamic>),
      moveLearnMethod: PokemonItem.fromJson(
          json['move_learn_method'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MoveVersionGroupDetailToJson(
        _$_MoveVersionGroupDetail instance) =>
    <String, dynamic>{
      'level_learned_at': instance.levelLearnedAt,
      'version_group': instance.versionGroup,
      'move_learn_method': instance.moveLearnMethod,
    };

_$_PokemonTypePast _$$_PokemonTypePastFromJson(Map<String, dynamic> json) =>
    _$_PokemonTypePast(
      generation:
          PokemonItem.fromJson(json['generation'] as Map<String, dynamic>),
      types: (json['types'] as List<dynamic>)
          .map((e) => PokemonType.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PokemonTypePastToJson(_$_PokemonTypePast instance) =>
    <String, dynamic>{
      'generation': instance.generation,
      'types': instance.types,
    };

_$_PokemonSprites _$$_PokemonSpritesFromJson(Map<String, dynamic> json) =>
    _$_PokemonSprites(
      frontDefault: json['front_default'] as String,
    );

Map<String, dynamic> _$$_PokemonSpritesToJson(_$_PokemonSprites instance) =>
    <String, dynamic>{
      'front_default': instance.frontDefault,
    };

_$_PokemonStat _$$_PokemonStatFromJson(Map<String, dynamic> json) =>
    _$_PokemonStat(
      baseStat: json['base_stat'] as int,
      effort: json['effort'] as int,
      stat: PokemonItem.fromJson(json['stat'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PokemonStatToJson(_$_PokemonStat instance) =>
    <String, dynamic>{
      'base_stat': instance.baseStat,
      'effort': instance.effort,
      'stat': instance.stat,
    };

_$_PokemonType _$$_PokemonTypeFromJson(Map<String, dynamic> json) =>
    _$_PokemonType(
      slot: json['slot'] as int,
      type: PokemonItem.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PokemonTypeToJson(_$_PokemonType instance) =>
    <String, dynamic>{
      'slot': instance.slot,
      'type': instance.type,
    };
