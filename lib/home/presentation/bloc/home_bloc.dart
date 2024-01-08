import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:poke_perfect/home/domain/model/pokemon_model.dart';
import 'package:poke_perfect/home/domain/usecase/get_pokemon_image.dart';
import 'package:poke_perfect/home/domain/usecase/get_pokemons.dart';
import 'package:poke_perfect/home/presentation/bloc/home_event.dart';
import 'package:poke_perfect/home/presentation/bloc/home_state.dart';
import 'package:poke_perfect/logger_service.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetAllPokemons getAllPokemons = GetIt.I<GetAllPokemons>();
  final GetPokemonImage getPokemonImage = GetIt.I<GetPokemonImage>();

  List<Pokemon> allPokemons = [];
  String? nextUrl;
  bool isLoadingNextPage = false;

  HomeBloc() : super(HomeInitial()) {
    on<FetchPokemons>(_onFetchPokemons);
    on<LoadNextPagePokemons>(_onLoadNextPagePokemons);
  }

  Future<void> _onFetchPokemons(
      FetchPokemons event, Emitter<HomeState> emit) async {
    LoggerService.logDebug('FetchPokemons event called');
    try {
      emit(HomeLoading());
      final pokemonListModel = await getAllPokemons();

      allPokemons.addAll(pokemonListModel.pokemons);
      nextUrl = pokemonListModel.next;
      emit(HomeLoaded(allPokemons));
    } catch (e) {
      LoggerService.logDebug('Error occurred: $e');
      emit(HomeError(e.toString()));
    }
  }

  Future<void> _onLoadNextPagePokemons(
      LoadNextPagePokemons event, Emitter<HomeState> emit) async {
    if (nextUrl != null && !isLoadingNextPage) {
      isLoadingNextPage = true;
      try {
        LoggerService.logDebug('Fetching next page: $nextUrl');
        final pokemonListModel = await getAllPokemons(url: nextUrl);

        allPokemons.addAll(pokemonListModel.pokemons);
        nextUrl = pokemonListModel.next;
        emit(HomeLoaded(allPokemons));
      } catch (e) {
        LoggerService.logDebug('Error occurred: $e');
        emit(HomeError(e.toString()));
      } finally {
        isLoadingNextPage = false;
      }
    }
  }

  Future<String> fetchImage(String detailsUrl) async {
    try {
      final imageUrl = await getPokemonImage(detailsUrl);
      return imageUrl;
    } catch (e) {
      LoggerService.logDebug('Error occurred: $e');
      return '';
    }
  }
}
