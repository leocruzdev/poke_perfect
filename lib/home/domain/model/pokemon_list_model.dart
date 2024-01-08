import 'package:poke_perfect/home/domain/model/pokemon_model.dart';

class PokemonList {
  final int count;
  final String? next;
  final String? previous;
  final List<Pokemon> pokemons;

  PokemonList({
    required this.count,
    this.next,
    this.previous,
    required this.pokemons,
  });
}
