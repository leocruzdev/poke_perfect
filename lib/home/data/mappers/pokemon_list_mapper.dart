import 'package:poke_perfect/home/data/mappers/pokemon_item_mapper.dart';
import 'package:poke_perfect/home/data/model/pokemon_list_model.dart';
import 'package:poke_perfect/home/domain/model/pokemon_list_model.dart';

extension PokemonListModelMapper on PokemonListModel {
  PokemonList toDomain() {
    return PokemonList(
      count: count,
      next: next,
      previous: previous,
      pokemons: results.map((e) => e.toDomain()).toList(),
    );
  }
}
