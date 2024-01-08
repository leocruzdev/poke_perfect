import 'package:injectable/injectable.dart';
import 'package:poke_perfect/home/data/mappers/pokemon_list_mapper.dart';
import 'package:poke_perfect/home/domain/model/pokemon_list_model.dart';
import 'package:poke_perfect/home/domain/pokemon_repository.dart';
import 'package:poke_perfect/logger_service.dart';

@injectable
class GetAllPokemons {
  final PokemonRepository repository;

  GetAllPokemons(this.repository);

  Future<PokemonList> call({String? url, int? limit, int? offset}) async {
    LoggerService.logDebug(
        'GetAllPokemons called with url: $url, limit: $limit, offset: $offset'); // Log de chamada
    try {
      final pokemonList = url != null
          ? await repository.getAllPokemons(url: url)
          : await repository.getAllPokemons(
              limit: limit ?? 20, offset: offset ?? 0);

      LoggerService.logDebug(
          'Successfully fetched PokemonList with count: ${pokemonList.count}'); // Log de sucesso
      return pokemonList.toDomain();
    } catch (e) {
      LoggerService.logDebug('Failed to fetch PokemonList: $e'); // Log de erro
      rethrow; // Relance a exceção para que possa ser tratada em outro lugar
    }
  }
}
