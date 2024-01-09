import 'package:injectable/injectable.dart';
import 'package:poke_perfect/home/domain/pokemon_repository.dart';
import 'package:poke_perfect/shared_model/pokemon_detail_domain.dart';
import 'package:poke_perfect/shared_model/pokemon_detail_mapper.dart';

@injectable
class GetPokemonDetail {
  final PokemonRepository repository;

  GetPokemonDetail(this.repository);

  Future<PokemonDetailDomain> call(String detailsUrl) async {
    final pokemonDetail = await repository.fetchPokemonDetail(detailsUrl);
    return pokemonDetail.toDomain();
  }
}
