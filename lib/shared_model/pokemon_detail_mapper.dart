import 'package:poke_perfect/shared_model/pokemon_detail_data.dart';
import 'package:poke_perfect/shared_model/pokemon_detail_domain.dart';

extension PokemonDataModelExtension on Pokemon {
  PokemonDetailDomain toDomain() {
    return PokemonDetailDomain(
      id: id,
      name: name,
      height: height,
      abilities: abilities.map((e) => e.toDomain()).toList(),
      forms: forms.map((e) => e.toDomain()).toList(),
      moves: moves.map((e) => e.toDomain()).toList(),
      sprites: sprites.toDomain(),
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

extension MoveVersionGroupDetailExtension on MoveVersionGroupDetail {
  MoveVersionGroupDetailDomain toDomain() {
    return MoveVersionGroupDetailDomain(
      levelLearnedAt: levelLearnedAt,
      versionGroup: versionGroup.toDomain(),
      moveLearnMethod: moveLearnMethod.toDomain(),
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
