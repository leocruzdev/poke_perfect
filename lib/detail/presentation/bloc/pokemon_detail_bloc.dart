import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:poke_perfect/detail/domain/usecase/get_pokemon_detail.dart';
import 'package:poke_perfect/detail/presentation/bloc/pokemon_detail_event.dart';
import 'package:poke_perfect/detail/presentation/bloc/pokemon_detail_state.dart';

class PokemonDetailBloc extends Bloc<PokemonDetailEvent, PokemonDetailState> {
  final GetPokemonDetailUseCase getPokemonDetailUseCase =
      GetIt.I<GetPokemonDetailUseCase>();

  PokemonDetailBloc() : super(PokemonDetailInitial()) {
    on<FetchPokemonDetail>(_onFetchPokemonDetail);
  }

  Future<void> _onFetchPokemonDetail(
      FetchPokemonDetail event, Emitter<PokemonDetailState> emit) async {
    emit(PokemonDetailLoading());
    try {
      final detail = await getPokemonDetailUseCase(event.url);
      emit(PokemonDetailLoaded(detail));
    } catch (e) {
      emit(PokemonDetailError(e.toString()));
    }
  }
}
