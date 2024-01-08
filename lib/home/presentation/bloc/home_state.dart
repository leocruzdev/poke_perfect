import 'package:equatable/equatable.dart';
import 'package:poke_perfect/home/domain/model/pokemon_model.dart';

abstract class HomeState extends Equatable {
  const HomeState();
  @override
  List<Object> get props => [];
}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeLoaded extends HomeState {
  final List<Pokemon> pokemons;
  const HomeLoaded(this.pokemons);
  @override
  List<Object> get props => [pokemons];
}

class HomeLoadMore extends HomeState {
  final List<Pokemon> pokemons;
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
