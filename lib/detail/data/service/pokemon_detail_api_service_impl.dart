import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:poke_perfect/detail/data/service/pokemon_detail_api_service.dart';

@Injectable(as: PokemonDetailApiService)
class PokemonDetailApiServiceImpl implements PokemonDetailApiService {
  final Dio dio;

  PokemonDetailApiServiceImpl(this.dio);

  @override
  Future<Response> fetchPokemonDetails(String detailUrl) async {
    return dio.get(detailUrl);
  }
}
