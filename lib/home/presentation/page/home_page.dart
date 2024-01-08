import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poke_perfect/home/presentation/bloc/home_bloc.dart';
import 'package:poke_perfect/home/presentation/bloc/home_event.dart';
import 'package:poke_perfect/home/presentation/bloc/home_state.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
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
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (state is HomeInitial) {
          context.read<HomeBloc>().add(FetchPokemons());
        }
        if (state is HomeLoaded || state is HomeLoadMore) {
          final pokemons = state is HomeLoaded
              ? state.pokemons
              : (state as HomeLoadMore).pokemons;
          final isLoadMore = state is HomeLoadMore && !state.isMax;
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
              itemCount: pokemons.length + (isLoadMore ? 1 : 0),
              itemBuilder: (context, index) {
                if (index >= pokemons.length) {
                  return const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Center(child: CircularProgressIndicator()),
                  );
                }
                final pokemon = pokemons[index];
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
                        return const Icon(Icons.error);
                      } else {
                        return Image.network(
                          snapshot.data ?? '',
                          errorBuilder: (context, error, stackTrace) {
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
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
