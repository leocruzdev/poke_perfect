// UseCase para buscar imagem do Pokémon
import 'package:injectable/injectable.dart';
import 'package:poke_perfect/home/domain/pokemon_repository.dart';

@injectable
class GetPokemonImage {
  final PokemonRepository repository;

  GetPokemonImage(this.repository);

  Future<String> call(String detailsUrl) async {
    return repository.fetchPokemonImage(detailsUrl);
  }
}
