import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poke_perfect/home/presentation/bloc/home_bloc.dart';
import 'package:poke_perfect/home/presentation/bloc/home_event.dart';
import 'package:poke_perfect/home/presentation/bloc/home_state.dart';
import 'package:poke_perfect/platform/logger/logger_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    LoggerService.logDebug('HomePage built');
    return Scaffold(
      appBar: AppBar(
        title: const Text('PokéPerfect'),
      ),
      body: const PokemonListView(),
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
        LoggerService.logDebug(
            'BlocBuilder rebuilding with state: ${state.runtimeType}');

        if (state is HomeInitial) {
          LoggerService.logDebug('Initial state, fetching Pokemons');
          context.read<HomeBloc>().add(FetchPokemons());
        }

        if (state is HomeLoaded || state is HomeLoadMore) {
          final pokemons = (state as HomeLoaded).pokemons;
          final isLoadMore =
              state is HomeLoadMore && !(state as HomeLoadMore).isMax;
          LoggerService.logDebug(
              'Displaying list with ${pokemons.length} items, isLoadMore: $isLoadMore');

          return NotificationListener<ScrollNotification>(
            onNotification: (scrollInfo) {
              if (scrollInfo.metrics.pixels ==
                      scrollInfo.metrics.maxScrollExtent &&
                  !isLoadMore) {
                LoggerService.logDebug('End of list reached, loading more...');
                context.read<HomeBloc>().add(LoadNextPagePokemons());
              }
              return true;
            },
            child: ListView.builder(
              itemCount: pokemons.length + (isLoadMore ? 1 : 0),
              itemBuilder: (context, index) {
                if (index >= pokemons.length) {
                  return const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Center(child: CircularProgressIndicator()),
                  );
                }

                final pokemon = pokemons[index];
                LoggerService.logDebug(
                    'Building item for Pokemon: ${pokemon.name}');

                return ListTile(
                  title: Text(pokemon.name),
                  subtitle: Text(pokemon.url),
                  leading: FutureBuilder(
                    future: BlocProvider.of<HomeBloc>(context)
                        .fetchImage(pokemon.url),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const CircularProgressIndicator();
                      } else if (snapshot.hasError) {
                        LoggerService.logDebug(
                            'Error loading image: ${snapshot.error}');
                        return const Icon(Icons.error);
                      } else {
                        return Image.network(
                          snapshot.data ?? '',
                          errorBuilder: (context, error, stackTrace) {
                            LoggerService.logDebug(
                                'Error in Image.network: $error');
                            return const Icon(Icons.broken_image_outlined);
                          },
                        );
                      }
                    },
                  ),
                );
              },
            ),
          );
        } else if (state is HomeError) {
          LoggerService.logDebug('Error state: ${state.message}');
          return Padding(
            padding: const EdgeInsets.all(32.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(state.message),
                  ),
                  ElevatedButton(
                    onPressed: () =>
                        context.read<HomeBloc>().add(FetchPokemons()),
                    child: const Text('Tentar novamente'),
                  ),
                ],
              ),
            ),
          );
        } else {
          LoggerService.logDebug('Loading state');
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
