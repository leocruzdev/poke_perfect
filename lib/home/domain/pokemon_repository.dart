import 'package:poke_perfect/home/data/model/pokemon_list_model.dart';

abstract class PokemonRepository {
  Future<PokemonListModel> getAllPokemons(
      {String? url, int limit = 20, int offset = 0});
  Future<String> fetchPokemonImage(String detailsUrl);
}
