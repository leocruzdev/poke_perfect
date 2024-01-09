import 'package:injectable/injectable.dart';
import 'package:poke_perfect/home/data/datasource/local_data_source.dart';
import 'package:poke_perfect/home/data/datasource/remote_data_source.dart';
import 'package:poke_perfect/home/data/model/pokemon_list_model.dart';
import 'package:poke_perfect/home/domain/pokemon_repository.dart';
import 'package:poke_perfect/platform/logger/logger_service.dart';
import 'package:poke_perfect/shared_model/pokemon.dart';

@Injectable(as: PokemonRepository)
class PokemonRepositoryImpl implements PokemonRepository {
  final RemoteDataSource remoteDataSource;
  final LocalDataSource localDataSource;

  PokemonRepositoryImpl(
    this.remoteDataSource,
    this.localDataSource,
  );

  @override
  Future<PokemonListModel> getAllPokemons(
      {String? url, int? limit, int? offset}) async {
    try {
      // LoggerService.logDebug('Checking local cache for pokemons');
      // final localData = await localDataSource.getPokemons();
      // if (localData != null) {
      //   // Se os dados locais estão disponíveis e a URL de próxima página não é a mesma que a última
      //   if (localData.next != url || url == null) {
      //     LoggerService.logDebug('Returning pokemons from local cache');
      //     return localData;
      //   }
      // }

      LoggerService.logDebug('Fetching pokemons from remote');
      final remoteData = await remoteDataSource.fetchPokemons(
          url: url, limit: limit, offset: offset);
      //await localDataSource.savePokemons(remoteData);
      LoggerService.logDebug('Pokemons fetched and saved to local cache');
      return remoteData;
    } catch (e) {
      LoggerService.logDebug('Error fetching pokemons: $e');
      throw Exception('Failed to load pokemons: $e');
    }
  }

  @override
  Future<String> fetchPokemonImage(String detailsUrl) async {
    try {
      LoggerService.logDebug(
          'Fetching pokemon image from: $detailsUrl'); // Log de início de busca de imagem
      return await remoteDataSource.fetchPokemonImage(detailsUrl);
      // Log de sucesso não é necessário aqui, pois se chegar a essa linha, não houve exceção
    } catch (e) {
      LoggerService.logDebug('Failed to load pokemon image: $e'); // Log de erro
      throw Exception('Failed to load pokemon image: $e');
    }
  }

  @override
  Future<Pokemon> fetchPokemonDetail(String detailsUrl) async {
    try {
      LoggerService.logDebug(
          'Fetching pokemon image from: $detailsUrl'); // Log de início de busca de imagem
      final response = await remoteDataSource.fetchPokemonDetail(detailsUrl);

      return response;
      // Log de sucesso não é necessário aqui, pois se chegar a essa linha, não houve exceção
    } catch (e) {
      LoggerService.logDebug('Failed to load pokemon image: $e'); // Log de erro
      throw Exception('Failed to load pokemon image: $e');
    }
  }
}
