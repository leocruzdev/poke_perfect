import 'package:poke_perfect/home/data/model/pokemon_list_model.dart';
import 'package:poke_perfect/shared_model/pokemon_detail_data.dart';

abstract class PokemonRepository {
  Future<PokemonListModel> getAllPokemons(
      {String? url, int limit = 20, int offset = 0});
  Future<String> fetchPokemonImage(String detailsUrl);
  Future<Pokemon> fetchPokemonDetail(String detailsUrl);
}
