import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poke_perfect/home/presentation/bloc/home_bloc.dart';
import 'package:poke_perfect/home/presentation/bloc/home_event.dart';
import 'package:poke_perfect/home/presentation/bloc/home_state.dart';
import 'package:poke_perfect/home/presentation/page/widgets/pokemon_list_item_widget.dart';
import 'package:poke_perfect/platform/design_system/navigable_app_bar.dart';
import 'package:poke_perfect/platform/logger/logger_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    LoggerService.logDebug('HomePage built');
    return const Scaffold(
      appBar: NavigableAppBar(
        title: 'Poké Perfect',
      ),
      body: PokemonListView(),
    );
  }
}

class PokemonListView extends StatelessWidget {
  const PokemonListView({super.key});
  @override
  Widget build(BuildContext context) {
    LoggerService.logDebug('PokemonListView built');

    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (state.runtimeType == HomeInitial) {
          context.read<HomeBloc>().add(FetchPokemons());
          return const Center(child: CircularProgressIndicator());
        } else if (state.runtimeType == HomeError) {
          final errorMessage = (state as HomeError).message;
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(errorMessage),
                ),
                ElevatedButton(
                  onPressed: () =>
                      context.read<HomeBloc>().add(FetchPokemons()),
                  child: const Text('Tentar novamente'),
                ),
              ],
            ),
          );
        } else if (state.runtimeType == HomeLoaded ||
            state.runtimeType == HomeLoadMore) {
          final pokemons = state is HomeLoaded
              ? state.pokemons
              : (state as HomeLoadMore).pokemons;
          final isLoadMore = state.runtimeType == HomeLoadMore &&
              !(state as HomeLoadMore).isMax;

          return NotificationListener<ScrollNotification>(
            onNotification: (scrollInfo) {
              if (scrollInfo.metrics.pixels ==
                      scrollInfo.metrics.maxScrollExtent &&
                  !isLoadMore) {
                context.read<HomeBloc>().add(LoadNextPagePokemons());
              }
              return true;
            },
            child: ListView.builder(
              addRepaintBoundaries: true,
              itemCount: pokemons.length + (isLoadMore ? 1 : 0),
              itemBuilder: (context, index) {
                final pokemon = pokemons[index];

                if (index >= pokemons.length) {
                  return const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Center(child: CircularProgressIndicator()),
                  );
                }

                return PokemonListItem(pokemon: pokemon);
              },
            ),
          );
        }

        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
