import 'package:poke_perfect/shared_model/pokemon_domain.dart';

class PokemonList {
  final int count;
  final String? next;
  final String? previous;
  final List<PokemonItemDomain> pokemons;

  PokemonList({
    required this.count,
    this.next,
    this.previous,
    required this.pokemons,
  });
}
