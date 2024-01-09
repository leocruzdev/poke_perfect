import 'package:equatable/equatable.dart';

abstract class HomeEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class FetchPokemons extends HomeEvent {}

class LoadNextPagePokemons extends HomeEvent {}

class LoadImagePokemon extends HomeEvent {
  final String imageUrl;

  LoadImagePokemon(this.imageUrl);

  @override
  List<Object> get props => [imageUrl];
}
