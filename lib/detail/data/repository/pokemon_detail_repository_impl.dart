import 'package:injectable/injectable.dart';
import 'package:poke_perfect/detail/data/service/pokemon_detail_api_service.dart';

abstract class PokemonDetailRepository {
  Future<void> getPokemonDetail(String url);
}

@Injectable(as: PokemonDetailRepository)
class PokemonDetailRepositoryImpl implements PokemonDetailRepository {
  final PokemonDetailApiService _pokemonDetailApiService;

  PokemonDetailRepositoryImpl(this._pokemonDetailApiService);

  @override
  Future<void> getPokemonDetail(String url) async {
    try {
      final response = await _pokemonDetailApiService.fetchPokemonDetails(url);
      // final pokemonDetailData =PokemonDetail() ;

      return;
    } catch (e) {
      throw Exception('Falha ao buscar detalhes do Pokémon.');
    }
  }
}
