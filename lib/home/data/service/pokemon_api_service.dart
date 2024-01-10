import 'package:dio/dio.dart';

abstract class PokemonApiService {
  Future<Response> fetchPokemons({String? url, int limit, int offset});
  Future<Response> fetchPokemonDetail(String detailsUrl);
}
