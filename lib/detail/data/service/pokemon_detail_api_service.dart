import 'package:dio/dio.dart';

abstract class PokemonDetailApiService {
  Future<Response> fetchPokemonDetails(String url);
}
