import 'package:injectable/injectable.dart';
import 'package:poke_perfect/detail/domain/model/pokemon_detail_model.dart';
import 'package:poke_perfect/home/domain/pokemon_repository.dart';
import 'package:poke_perfect/shared_model/mapper/pokemon_data_mapper.dart';

@injectable
class GetPokemonDetail {
  final PokemonRepository repository;

  GetPokemonDetail(this.repository);

  Future<PokemonDetail> call(String detailsUrl) async {
    final pokemonDetail = await repository.fetchPokemonDetail(detailsUrl);
    return pokemonDetail.toDomain();
  }
}
