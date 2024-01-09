import 'package:poke_perfect/detail/domain/model/pokemon_detail_model.dart';

abstract class PokemonDetailState {}

class PokemonDetailInitial extends PokemonDetailState {}

class PokemonDetailLoading extends PokemonDetailState {}

class PokemonDetailLoaded extends PokemonDetailState {
  final PokemonDetail pokemonDetail;
  PokemonDetailLoaded(this.pokemonDetail);
}

class PokemonDetailError extends PokemonDetailState {
  final String message;
  PokemonDetailError(this.message);
}
