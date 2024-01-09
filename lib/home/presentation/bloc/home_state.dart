import 'package:equatable/equatable.dart';
import 'package:poke_perfect/shared_model/pokemon_domain.dart';

abstract class HomeState extends Equatable {
  const HomeState();
  @override
  List<Object> get props => [];
}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeLoaded extends HomeState {
  final List<PokemonItemDomain> pokemons;
  final Map<String, PokemonDomain> pokemonDetails;

  const HomeLoaded(this.pokemons, this.pokemonDetails);
  @override
  List<Object> get props => [pokemons, pokemonDetails];
}

class HomeLoadMore extends HomeState {
  final List<PokemonItemDomain> pokemons;

  final bool isMax;

  const HomeLoadMore(this.pokemons, {this.isMax = false});
  @override
  List<Object> get props => [pokemons, isMax];
}

class HomeError extends HomeState {
  final String message;
  const HomeError(this.message);
  @override
  List<Object> get props => [message];
}
