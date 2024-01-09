class PokemonDomain {
  final int id;
  final String name;
  final int baseExperience;
  final int height;
  final bool isDefault;
  final int order;
  final int weight;
  final List<PokemonAbilityDomain> abilities;
  final List<NamedAPIResourceDomain> forms;
  final List<VersionGameIndexDomain> gameIndices;
  final List<PokemonHeldItemDomain> heldItems;
  final String locationAreaEncounters;
  final List<PokemonMoveDomain> moves;
  final List<PokemonTypePastDomain> pastTypes;
  final PokemonSpritesDomain sprites;
  final NamedAPIResourceDomain species;
  final List<PokemonStatDomain> stats;
  final List<PokemonTypeDomain> types;

  PokemonDomain({
    required this.id,
    required this.name,
    required this.baseExperience,
    required this.height,
    required this.isDefault,
    required this.order,
    required this.weight,
    required this.abilities,
    required this.forms,
    required this.gameIndices,
    required this.heldItems,
    required this.locationAreaEncounters,
    required this.moves,
    required this.pastTypes,
    required this.sprites,
    required this.species,
    required this.stats,
    required this.types,
  });
}

class PokemonAbilityDomain {
  final bool isHidden;
  final int slot;
  final NamedAPIResourceDomain ability;

  PokemonAbilityDomain({
    required this.isHidden,
    required this.slot,
    required this.ability,
  });
}

class NamedAPIResourceDomain {
  final String name;
  final String url;

  NamedAPIResourceDomain({
    required this.name,
    required this.url,
  });
}

class VersionGameIndexDomain {
  final int gameIndex;
  final NamedAPIResourceDomain version;

  VersionGameIndexDomain({
    required this.gameIndex,
    required this.version,
  });
}

class PokemonHeldItemDomain {
  final NamedAPIResourceDomain item;
  final List<VersionDetailDomain> versionDetailsDomain;

  PokemonHeldItemDomain({
    required this.item,
    required this.versionDetailsDomain,
  });
}

class VersionDetailDomain {
  final int rarity;
  final NamedAPIResourceDomain version;

  VersionDetailDomain({
    required this.rarity,
    required this.version,
  });
}

class PokemonMoveDomain {
  final NamedAPIResourceDomain move;
  final List<MoveVersionGroupDetailDomain> versionGroupDetails;

  PokemonMoveDomain({
    required this.move,
    required this.versionGroupDetails,
  });
}

class MoveVersionGroupDetailDomain {
  final int levelLearnedAt;
  final NamedAPIResourceDomain versionGroup;
  final NamedAPIResourceDomain moveLearnMethod;

  MoveVersionGroupDetailDomain({
    required this.levelLearnedAt,
    required this.versionGroup,
    required this.moveLearnMethod,
  });
}

class PokemonTypePastDomain {
  final NamedAPIResourceDomain generation;
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
  final NamedAPIResourceDomain stat;

  PokemonStatDomain({
    required this.baseStat,
    required this.effort,
    required this.stat,
  });
}

class PokemonTypeDomain {
  final int slot;
  final NamedAPIResourceDomain type;

  PokemonTypeDomain({
    required this.slot,
    required this.type,
  });
}
