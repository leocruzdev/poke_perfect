abstract class PokemonDetailEvent {}

class FetchPokemonDetail extends PokemonDetailEvent {
  final String url;
  FetchPokemonDetail(this.url);
}
