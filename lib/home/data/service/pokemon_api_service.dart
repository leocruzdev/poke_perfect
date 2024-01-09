import 'package:dio/dio.dart';

abstract class PokemonApiService {
  Future<Response> fetchPokemons({String? url, int limit, int offset});
  Future<Response> fetchPokemonImage(String detailsUrl);
  Future<Response> fetchPokemonDetail(String detailsUrl);
}
