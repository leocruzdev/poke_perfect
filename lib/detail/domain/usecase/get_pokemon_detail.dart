import 'package:injectable/injectable.dart';
import 'package:poke_perfect/detail/data/repository/pokemon_detail_repository_impl.dart';
import 'package:poke_perfect/detail/domain/model/pokemon_detail_model.dart';

@injectable
class GetPokemonDetailUseCase {
  final PokemonDetailRepository repository;

  GetPokemonDetailUseCase(this.repository);

  Future<PokemonDetail> call(String url) async {
    return repository.getPokemonDetail(url);
  }
}
