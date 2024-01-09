abstract class PokemonDetailState {}

class PokemonDetailInitial extends PokemonDetailState {}

class PokemonDetailLoading extends PokemonDetailState {}

class PokemonDetailLoaded extends PokemonDetailState {
  final void pokemonDetail;
  PokemonDetailLoaded(this.pokemonDetail);
}

class PokemonDetailError extends PokemonDetailState {
  final String message;
  PokemonDetailError(this.message);
}
