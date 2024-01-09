import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon.freezed.dart';
part 'pokemon.g.dart';

@freezed
class Pokemon with _$Pokemon {
  const factory Pokemon({
    required int id,
    required String name,
    @JsonKey(name: 'base_experience') required int baseExperience,
    required int height,
    @JsonKey(name: 'is_default') required bool isDefault,
    required int order,
    required int weight,
    required List<PokemonAbility> abilities,
    required List<NamedAPIResource> forms,
    @JsonKey(name: 'game_indices') required List<VersionGameIndex> gameIndices,
    @JsonKey(name: 'held_items') required List<PokemonHeldItem> heldItems,
    @JsonKey(name: 'location_area_encounters')
    required String locationAreaEncounters,
    required List<PokemonMove> moves,
    @JsonKey(name: 'past_types') required List<PokemonTypePast> pastTypes,
    required PokemonSprites sprites,
    required NamedAPIResource species,
    required List<PokemonStat> stats,
    required List<PokemonType> types,
  }) = _Pokemon;

  factory Pokemon.fromJson(Map<String, dynamic> json) =>
      _$PokemonFromJson(json);
}

@freezed
class PokemonAbility with _$PokemonAbility {
  const factory PokemonAbility({
    @JsonKey(name: 'is_hidden') required bool isHidden,
    required int slot,
    required NamedAPIResource ability,
  }) = _PokemonAbility;

  factory PokemonAbility.fromJson(Map<String, dynamic> json) =>
      _$PokemonAbilityFromJson(json);
}

@freezed
class NamedAPIResource with _$NamedAPIResource {
  const factory NamedAPIResource({
    required String name,
    required String url,
  }) = _NamedAPIResource;

  factory NamedAPIResource.fromJson(Map<String, dynamic> json) =>
      _$NamedAPIResourceFromJson(json);
}

@freezed
class VersionGameIndex with _$VersionGameIndex {
  const factory VersionGameIndex({
    @JsonKey(name: 'game_index') required int gameIndex,
    required NamedAPIResource version,
  }) = _VersionGameIndex;

  factory VersionGameIndex.fromJson(Map<String, dynamic> json) =>
      _$VersionGameIndexFromJson(json);
}

@freezed
class PokemonHeldItem with _$PokemonHeldItem {
  const factory PokemonHeldItem({
    required NamedAPIResource item,
    @JsonKey(name: 'version_details')
    required List<VersionDetail> versionDetails,
  }) = _PokemonHeldItem;

  factory PokemonHeldItem.fromJson(Map<String, dynamic> json) =>
      _$PokemonHeldItemFromJson(json);
}

@freezed
class VersionDetail with _$VersionDetail {
  const factory VersionDetail({
    required int rarity,
    required NamedAPIResource version,
  }) = _VersionDetail;

  factory VersionDetail.fromJson(Map<String, dynamic> json) =>
      _$VersionDetailFromJson(json);
}

@freezed
class PokemonMove with _$PokemonMove {
  const factory PokemonMove({
    required NamedAPIResource move,
    @JsonKey(name: 'version_group_details')
    required List<MoveVersionGroupDetail> versionGroupDetails,
  }) = _PokemonMove;

  factory PokemonMove.fromJson(Map<String, dynamic> json) =>
      _$PokemonMoveFromJson(json);
}

@freezed
class MoveVersionGroupDetail with _$MoveVersionGroupDetail {
  const factory MoveVersionGroupDetail({
    @JsonKey(name: 'level_learned_at') required int levelLearnedAt,
    @JsonKey(name: 'version_group') required NamedAPIResource versionGroup,
    @JsonKey(name: 'move_learn_method')
    required NamedAPIResource moveLearnMethod,
  }) = _MoveVersionGroupDetail;

  factory MoveVersionGroupDetail.fromJson(Map<String, dynamic> json) =>
      _$MoveVersionGroupDetailFromJson(json);
}

@freezed
class PokemonTypePast with _$PokemonTypePast {
  const factory PokemonTypePast({
    required NamedAPIResource generation,
    required List<PokemonType> types,
  }) = _PokemonTypePast;

  factory PokemonTypePast.fromJson(Map<String, dynamic> json) =>
      _$PokemonTypePastFromJson(json);
}

@freezed
class PokemonSprites with _$PokemonSprites {
  const factory PokemonSprites({
    @JsonKey(name: 'front_default') required String frontDefault,
  }) = _PokemonSprites;

  factory PokemonSprites.fromJson(Map<String, dynamic> json) =>
      _$PokemonSpritesFromJson(json);
}

@freezed
class PokemonStat with _$PokemonStat {
  const factory PokemonStat({
    @JsonKey(name: 'base_stat') required int baseStat,
    required int effort,
    required NamedAPIResource stat,
  }) = _PokemonStat;

  factory PokemonStat.fromJson(Map<String, dynamic> json) =>
      _$PokemonStatFromJson(json);
}

@freezed
class PokemonType with _$PokemonType {
  const factory PokemonType({
    required int slot,
    required NamedAPIResource type,
  }) = _PokemonType;

  factory PokemonType.fromJson(Map<String, dynamic> json) =>
      _$PokemonTypeFromJson(json);
}
