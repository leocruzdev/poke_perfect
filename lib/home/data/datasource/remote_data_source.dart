import 'package:injectable/injectable.dart';
import 'package:poke_perfect/home/data/model/pokemon_list_model.dart';
import 'package:poke_perfect/home/data/service/pokemon_api_service.dart';

abstract class RemoteDataSource {
  Future<PokemonListModel> fetchPokemons(
      {String? url, int? limit, int? offset});
  Future<String> fetchPokemonImage(String detailsUrl);
}

@Injectable(as: RemoteDataSource)
class ApiRemoteDataSource implements RemoteDataSource {
  final PokemonApiService apiService;

  ApiRemoteDataSource(this.apiService);

  @override
  Future<PokemonListModel> fetchPokemons(
      {String? url, int? limit, int? offset}) async {
    try {
      final response = url != null
          ? await apiService.fetchPokemons(url: url)
          : await apiService.fetchPokemons(
              limit: limit ?? 20, offset: offset ?? 0);

      if (response.statusCode == 200) {
        return PokemonListModel.fromJson(response.data);
      } else {
        throw Exception(
            'Failed to load pokemon: Server returned ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Failed to load pokemon: $e');
    }
  }

  @override
  Future<String> fetchPokemonImage(String detailsUrl) async {
    try {
      final response = await apiService.fetchPokemonImage(detailsUrl);
      if (response.statusCode == 200) {
        final decoded = response.data;
        return decoded['sprites']['front_default'] ?? '';
      } else {
        throw Exception(
            'Failed to load pokemon details: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Failed to load pokemon details: $e');
    }
  }
}
