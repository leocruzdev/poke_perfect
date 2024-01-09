import 'package:poke_perfect/shared_model/pokemon.dart';
import 'package:poke_perfect/shared_model/pokemon_domain.dart';

extension PokemonDataModelExtension on Pokemon {
  PokemonDomain toDomain() {
    return PokemonDomain(
      id: id,
      name: name,
      baseExperience: baseExperience,
      height: height,
      isDefault: isDefault,
      order: order,
      weight: weight,
      abilities: abilities.map((e) => e.toDomain()).toList(),
      forms: forms.map((e) => e.toDomain()).toList(),
      gameIndices: gameIndices.map((e) => e.toDomain()).toList(),
      heldItems: heldItems.map((e) => e.toDomain()).toList(),
      locationAreaEncounters: locationAreaEncounters,
      moves: moves.map((e) => e.toDomain()).toList(),
      pastTypes: pastTypes.map((e) => e.toDomain()).toList(),
      sprites: sprites.toDomain(),
      species: species.toDomain(),
      stats: stats.map((e) => e.toDomain()).toList(),
      types: types.map((e) => e.toDomain()).toList(),
    );
  }
}

extension PokemonAbilityDataModelExtension on PokemonAbility {
  PokemonAbilityDomain toDomain() {
    return PokemonAbilityDomain(
      isHidden: isHidden,
      slot: slot,
      ability: ability.toDomain(),
    );
  }
}

extension PokemonItemDataModelExtension on PokemonItem {
  PokemonItemDomain toDomain() {
    return PokemonItemDomain(
      name: name,
      url: url,
    );
  }
}

extension VersionGameIndexDataModelExtension on VersionGameIndex {
  VersionGameIndexDomain toDomain() {
    return VersionGameIndexDomain(
      gameIndex: gameIndex,
      version: version.toDomain(),
    );
  }
}

extension PokemonHeldItemExtension on PokemonHeldItem {
  PokemonHeldItemDomain toDomain() {
    return PokemonHeldItemDomain(
      item: item.toDomain(),
      versionDetailsDomain:
          versionDetails.map((detail) => detail.toDomain()).toList(),
    );
  }
}

extension VersionDetailExtension on VersionDetail {
  VersionDetailDomain toDomain() {
    return VersionDetailDomain(
      rarity: rarity,
      version: version.toDomain(),
    );
  }
}

extension PokemonMoveExtension on PokemonMove {
  PokemonMoveDomain toDomain() {
    return PokemonMoveDomain(
      move: move.toDomain(),
      versionGroupDetails:
          versionGroupDetails.map((detail) => detail.toDomain()).toList(),
    );
  }
}

extension MoveVersionGroupDetailExtension on MoveVersionGroupDetail {
  MoveVersionGroupDetailDomain toDomain() {
    return MoveVersionGroupDetailDomain(
      levelLearnedAt: levelLearnedAt,
      versionGroup: versionGroup.toDomain(),
      moveLearnMethod: moveLearnMethod.toDomain(),
    );
  }
}

extension PokemonTypePastExtension on PokemonTypePast {
  PokemonTypePastDomain toDomain() {
    return PokemonTypePastDomain(
      generation: generation.toDomain(),
      types: types.map((type) => type.toDomain()).toList(),
    );
  }
}

extension PokemonSpritesExtension on PokemonSprites {
  PokemonSpritesDomain toDomain() {
    return PokemonSpritesDomain(
      frontDefault: frontDefault,
    );
  }
}

extension PokemonStatExtension on PokemonStat {
  PokemonStatDomain toDomain() {
    return PokemonStatDomain(
      baseStat: baseStat,
      effort: effort,
      stat: stat.toDomain(),
    );
  }
}

extension PokemonTypeExtension on PokemonType {
  PokemonTypeDomain toDomain() {
    return PokemonTypeDomain(
      slot: slot,
      type: type.toDomain(),
    );
  }
}
