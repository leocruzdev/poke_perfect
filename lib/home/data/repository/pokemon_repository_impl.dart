import 'package:injectable/injectable.dart';
import 'package:poke_perfect/home/data/datasource/local_data_source.dart';
import 'package:poke_perfect/home/data/datasource/remote_data_source.dart';
import 'package:poke_perfect/home/data/model/pokemon_list_model.dart';
import 'package:poke_perfect/home/domain/pokemon_repository.dart';

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
      //Tenta buscar dados do cache local
      final localData = await localDataSource.getPokemons();
      if (localData != null) {
        return localData; // Retorna os dados locais se disponíveis
      }

      // Se não há dados locais, busca da API
      final remoteData = await remoteDataSource.fetchPokemons(
          url: url, limit: limit, offset: offset);
      await localDataSource
          .savePokemons(remoteData); // Salva os novos dados no cache local
      return remoteData; // Retorna os dados obtidos da API
    } catch (e) {
      throw Exception('Failed to load pokemon: $e');
    }
  }

  @override
  Future<String> fetchPokemonImage(String detailsUrl) async {
    try {
      // Apenas busca a imagem da API, pois imagens geralmente não são armazenadas localmente
      return await remoteDataSource.fetchPokemonImage(detailsUrl);
    } catch (e) {
      throw Exception('Failed to load pokemon image: $e');
    }
  }
}
