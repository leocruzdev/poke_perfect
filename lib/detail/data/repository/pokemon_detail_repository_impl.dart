import 'package:injectable/injectable.dart';
import 'package:poke_perfect/detail/data/service/pokemon_detail_api_service.dart';
import 'package:poke_perfect/detail/domain/model/pokemon_detail_model.dart';
import 'package:poke_perfect/shared_model/mapper/pokemon_data_mapper.dart';
import 'package:poke_perfect/shared_model/model/pokemon_data.dart';

abstract class PokemonDetailRepository {
  Future<PokemonDetail> getPokemonDetail(String url);
}

@Injectable(as: PokemonDetailRepository)
class PokemonDetailRepositoryImpl implements PokemonDetailRepository {
  final PokemonDetailApiService _pokemonDetailApiService;

  PokemonDetailRepositoryImpl(this._pokemonDetailApiService);

  @override
  Future<PokemonDetail> getPokemonDetail(String url) async {
    try {
      final response = await _pokemonDetailApiService.fetchPokemonDetails(url);
      final pokemonDetailData = PokemonData.fromJson(response.data);
      return pokemonDetailData.toDomain();
    } catch (e) {
      throw Exception('Falha ao buscar detalhes do Pokémon.');
    }
  }
}
