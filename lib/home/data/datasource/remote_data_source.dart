import 'package:injectable/injectable.dart';
import 'package:poke_perfect/home/data/model/pokemon_list_model.dart';
import 'package:poke_perfect/home/data/service/pokemon_api_service.dart';
import 'package:poke_perfect/platform/logger/logger_service.dart';
import 'package:poke_perfect/shared_model/pokemon_detail_data.dart';

abstract class RemoteDataSource {
  Future<PokemonListModel> fetchPokemons(
      {String? url, int? limit, int? offset});
  Future<Pokemon> fetchPokemonDetail(String detailsUrl);
}

@Injectable(as: RemoteDataSource)
class ApiRemoteDataSource implements RemoteDataSource {
  final PokemonApiService apiService;

  ApiRemoteDataSource(this.apiService);

  @override
  Future<PokemonListModel> fetchPokemons(
      {String? url, int? limit, int? offset}) async {
    LoggerService.logDebug(
        'Fetching pokemons: url=$url, limit=$limit, offset=$offset'); // Log de início de fetch
    try {
      final response = url != null
          ? await apiService.fetchPokemons(url: url)
          : await apiService.fetchPokemons(
              limit: limit ?? 5, offset: offset ?? 0);

      if (response.statusCode == 200) {
        LoggerService.logDebug(
            'Pokemons fetched successfully.'); // Log de sucesso
        return PokemonListModel.fromJson(response.data);
      } else {
        LoggerService.logDebug(
            'Failed to load pokemons. Status code: ${response.statusCode}'); // Log de erro
        throw Exception(
            'Failed to load pokemon: Server returned ${response.statusCode}');
      }
    } catch (e) {
      LoggerService.logDebug(
          'Exception occurred while fetching pokemons: $e'); // Log da exceção
      throw Exception('Failed to load pokemon: $e');
    }
  }

  @override
  Future<Pokemon> fetchPokemonDetail(String detailsUrl) async {
    LoggerService.logDebug('Fetching pokemon detail: $detailsUrl');
    try {
      final response = await apiService.fetchPokemonDetail(detailsUrl);
      if (response.statusCode == 200) {
        LoggerService.logDebug('Received data: ${response.data}');

        final pokemonData = Pokemon.fromJson(response.data);

        return pokemonData;
      } else {
        LoggerService.logDebug(
            'Failed to load pokemon details. Status code: ${response.statusCode}');
        throw Exception(
            'Failed to load pokemon details: ${response.statusCode}');
      }
    } catch (e) {
      LoggerService.logDebug(
          'Exception occurred while fetching pokemon image: $e');
      throw Exception('Failed to load pokemon details: $e');
    }
  }
}
