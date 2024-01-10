import 'package:poke_perfect/home/data/model/pokemon_list_model.dart';
import 'package:poke_perfect/home/domain/model/pokemon_list_model.dart';
import 'package:poke_perfect/shared_model/pokemon_detail_data.dart';
import 'package:poke_perfect/shared_model/pokemon_detail_domain.dart';

final fakePokemonListModel = PokemonListModel(
  count: 2,
  next: 'http://fakeapi.com/pokemon?page=2',
  previous: null,
  results: [
    const PokemonItem(name: 'Bulbasaur', url: 'http://fakeapi.com/pokemon/1'),
    const PokemonItem(name: 'Charmander', url: 'http://fakeapi.com/pokemon/2'),
  ],
);

final fakePokemonList = PokemonList(
  count: 2,
  next: 'http://fakeapi.com/pokemon?page=2',
  previous: null,
  pokemons: [
    PokemonItemDomain(name: 'Bulbasaur', url: 'http://fakeapi.com/pokemon/1'),
    PokemonItemDomain(name: 'Charmander', url: 'http://fakeapi.com/pokemon/2'),
  ],
);

// Simule o carregamento da próxima página com HomeLoading seguido de HomeLoaded
final fakePokemonListWithLoading = PokemonList(
  count: 2,
  next: 'http://fakeapi.com/pokemon?page=2',
  previous: null,
  pokemons: [],
);

final fakePokemonDetail = PokemonDetailDomain(
  id: 1,
  name: 'Bulbasaur',
  height: 7,
  types: [
    PokemonTypeDomain(
        slot: 1,
        type: PokemonItemDomain(
            name: 'Grass', url: 'http://fakeapi.com/type/grass')),
    PokemonTypeDomain(
        slot: 2,
        type: PokemonItemDomain(
            name: 'Poison', url: 'http://fakeapi.com/type/poison')),
  ],
  sprites: PokemonSpritesDomain(
    frontDefault: 'http://fakeapi.com/sprites/1',
  ),
  abilities: [
    PokemonAbilityDomain(
      isHidden: false,
      slot: 1,
      ability: PokemonItemDomain(
          name: 'Overgrow', url: 'http://fakeapi.com/ability/overgrow'),
    ),
  ],
  forms: [
    PokemonItemDomain(
        name: 'Bulbasaur Form 1', url: 'http://fakeapi.com/form/1'),
  ],
  moves: [
    PokemonMoveDomain(
      move: PokemonItemDomain(
          name: 'Tackle', url: 'http://fakeapi.com/move/tackle'),
      versionGroupDetails: [
        MoveVersionGroupDetailDomain(
          levelLearnedAt: 5,
          versionGroup: PokemonItemDomain(name: 'Red/Blue', url: ''),
          moveLearnMethod: PokemonItemDomain(name: 'Level Up', url: ''),
        ),
      ],
    ),
  ],
  stats: [
    PokemonStatDomain(
      baseStat: 45,
      effort: 0,
      stat: PokemonItemDomain(name: 'HP', url: 'http://fakeapi.com/stat/hp'),
    ),
  ],
);
