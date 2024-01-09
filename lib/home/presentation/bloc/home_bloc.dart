import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:poke_perfect/home/domain/usecase/get_pokemon_detail.dart';
import 'package:poke_perfect/home/domain/usecase/get_pokemon_image.dart';
import 'package:poke_perfect/home/domain/usecase/get_pokemons.dart';
import 'package:poke_perfect/home/presentation/bloc/home_event.dart';
import 'package:poke_perfect/home/presentation/bloc/home_state.dart';
import 'package:poke_perfect/platform/logger/logger_service.dart';
import 'package:poke_perfect/shared_model/pokemon_detail_domain.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetAllPokemons getAllPokemons = GetIt.I<GetAllPokemons>();
  final GetPokemonImage getPokemonImage = GetIt.I<GetPokemonImage>();
  final GetPokemonDetail getPokemonDetail = GetIt.I<GetPokemonDetail>();

  List<PokemonItemDomain> allPokemons = [];
  String? nextUrl;
  bool isLoadingNextPage = false;
  Map<String, String> imageCache = {};
  Map<String, PokemonDetailDomain> pokemonDetails = {};

  HomeBloc() : super(HomeInitial()) {
    on<FetchPokemons>(_onFetchPokemons);
    on<LoadNextPagePokemons>(_onLoadNextPagePokemons);
    on<LoadImagePokemon>(_onLoadImagePokemon);
  }

  Future<void> _onFetchPokemons(
      FetchPokemons event, Emitter<HomeState> emit) async {
    LoggerService.logDebug('FetchPokemons event called');
    try {
      emit(HomeLoading());
      final pokemonListModel = await getAllPokemons();
      LoggerService.logDebug('Fetched initial Pokemon list');

      allPokemons.addAll(pokemonListModel.pokemons);
      nextUrl = pokemonListModel.next;
      emit(HomeLoaded(allPokemons, pokemonDetails));
      LoggerService.logDebug(
          'HomeLoaded emitted with ${allPokemons.length} pokemons');
    } catch (e) {
      LoggerService.logDebug('Error occurred in _onFetchPokemons: $e');
      emit(HomeError(e.toString()));
    }
  }

  Future<void> _onLoadNextPagePokemons(
      LoadNextPagePokemons event, Emitter<HomeState> emit) async {
    LoggerService.logDebug('LoadNextPagePokemons event called');
    if (nextUrl != null && !isLoadingNextPage) {
      isLoadingNextPage = true;
      LoggerService.logDebug('Loading next page of Pokemon');
      try {
        final pokemonListModel = await getAllPokemons(url: nextUrl);
        allPokemons += (pokemonListModel.pokemons);
        nextUrl = pokemonListModel.next;
        emit(HomeLoaded(allPokemons, pokemonDetails));
        LoggerService.logDebug(
            'Loaded additional Pokemon, total: ${allPokemons.length}');
      } catch (e) {
        LoggerService.logDebug('Error occurred in _onLoadNextPagePokemons: $e');
        emit(HomeError(e.toString()));
      } finally {
        isLoadingNextPage = false;
      }
    } else {
      LoggerService.logDebug(
          'Next page request ignored (URL: $nextUrl, isLoading: $isLoadingNextPage)');
    }
  }

  Future<void> _onLoadImagePokemon(
      LoadImagePokemon event, Emitter<HomeState> emit) async {
    if (imageCache.containsKey(event.imageUrl)) {
      return;
    }

    try {
      final pokemonDetail = await getPokemonDetail(event.imageUrl);
      pokemonDetails[event.imageUrl] = pokemonDetail;
      imageCache[event.imageUrl] = pokemonDetail.sprites.frontDefault;
      emit(HomeLoaded(allPokemons, pokemonDetails));
    } catch (e) {
      LoggerService.logDebug('Error occurred in _onLoadImagePokemon: $e');
    }
  }
}
