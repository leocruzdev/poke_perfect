class PokemonDetailDomain {
  final int id;
  final String name;
  final int height;
  final List<PokemonTypeDomain> types;
  final PokemonSpritesDomain sprites;
  final List<PokemonAbilityDomain> abilities;
  final List<PokemonItemDomain> forms;
  final List<PokemonMoveDomain> moves;
  final List<PokemonStatDomain> stats;

  PokemonDetailDomain({
    required this.id,
    required this.name,
    required this.height,
    required this.types,
    required this.sprites,
    required this.abilities,
    required this.forms,
    required this.moves,
    required this.stats,
  });
}

class PokemonAbilityDomain {
  final bool isHidden;
  final int slot;
  final PokemonItemDomain ability;
  PokemonAbilityDomain({
    required this.isHidden,
    required this.slot,
    required this.ability,
  });
}

class PokemonItemDomain {
  final String name;
  final String url;
  PokemonItemDomain({
    required this.name,
    required this.url,
  });
}

class VersionGameIndexDomain {
  final int gameIndex;
  final PokemonItemDomain version;
  VersionGameIndexDomain({
    required this.gameIndex,
    required this.version,
  });
}

class PokemonHeldItemDomain {
  final PokemonItemDomain item;
  final List<VersionDetailDomain> versionDetailsDomain;
  PokemonHeldItemDomain({
    required this.item,
    required this.versionDetailsDomain,
  });
}

class VersionDetailDomain {
  final int rarity;
  final PokemonItemDomain version;
  VersionDetailDomain({
    required this.rarity,
    required this.version,
  });
}

class PokemonMoveDomain {
  final PokemonItemDomain move;
  final List<MoveVersionGroupDetailDomain> versionGroupDetails;
  PokemonMoveDomain({
    required this.move,
    required this.versionGroupDetails,
  });
}

class MoveVersionGroupDetailDomain {
  final int levelLearnedAt;
  final PokemonItemDomain versionGroup;
  final PokemonItemDomain moveLearnMethod;
  MoveVersionGroupDetailDomain({
    required this.levelLearnedAt,
    required this.versionGroup,
    required this.moveLearnMethod,
  });
}

class PokemonTypePastDomain {
  final PokemonItemDomain generation;
  final List<PokemonTypeDomain> types;
  PokemonTypePastDomain({
    required this.generation,
    required this.types,
  });
}

class PokemonSpritesDomain {
  final String frontDefault;
  PokemonSpritesDomain({
    required this.frontDefault,
  });
}

class PokemonStatDomain {
  final int baseStat;
  final int effort;
  final PokemonItemDomain stat;
  PokemonStatDomain({
    required this.baseStat,
    required this.effort,
    required this.stat,
  });
}

class PokemonTypeDomain {
  final int slot;
  final PokemonItemDomain type;
  PokemonTypeDomain({
    required this.slot,
    required this.type,
  });
}
