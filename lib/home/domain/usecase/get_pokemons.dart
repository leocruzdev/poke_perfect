import 'package:injectable/injectable.dart';
import 'package:poke_perfect/home/data/mappers/pokemon_list_mapper.dart';
import 'package:poke_perfect/home/domain/model/pokemon_list_model.dart';
import 'package:poke_perfect/home/domain/pokemon_repository.dart';

@injectable
class GetAllPokemons {
  final PokemonRepository repository;

  GetAllPokemons(this.repository);

  Future<PokemonList> call({String? url, int? limit, int? offset}) async {
    final pokemonList = url != null
        ? await repository.getAllPokemons(url: url)
        : await repository.getAllPokemons(
            limit: limit ?? 20, offset: offset ?? 0);

    return pokemonList.toDomain();
  }
}
