import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:poke_perfect/home/data/service/pokemon_api_service.dart';

@Injectable(as: PokemonApiService)
class PokemonApiServiceImpl implements PokemonApiService {
  final Dio dio;

  PokemonApiServiceImpl(this.dio);

  @override
  Future<Response> fetchPokemons({String? url, int? limit, int? offset}) async {
    final effectiveUrl = url ?? 'pokemon?limit=$limit&offset=$offset';
    return dio.get(effectiveUrl);
  }

  @override
  Future<Response> fetchPokemonImage(String detailsUrl) async {
    return dio.get(detailsUrl);
  }

  @override
  Future<Response> fetchPokemonDetail(String detailsUrl) {
    return dio.get(detailsUrl);
  }
}
