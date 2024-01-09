import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:poke_perfect/home/domain/model/pokemon_model.dart';
import 'package:poke_perfect/home/presentation/bloc/home_bloc.dart';
import 'package:poke_perfect/home/presentation/bloc/home_event.dart';
import 'package:poke_perfect/home/presentation/bloc/home_state.dart';
import 'package:poke_perfect/platform/navigator/navigator.dart';
import 'package:poke_perfect/platform/navigator/routes.dart';

class PokemonListItem extends StatelessWidget {
  final Pokemon pokemon;

  const PokemonListItem({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navigator = GetIt.I<AppNavigator>();

    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        final imageUrl = context.read<HomeBloc>().imageCache[pokemon.url];
        final pokemonDetail =
            context.read<HomeBloc>().pokemonDetails[pokemon.url];

        if (imageUrl == null) {
          context.read<HomeBloc>().add(LoadImagePokemon(pokemon.url));
        }

        return InkWell(
          onTap: () {
            if (pokemonDetail != null) {
              navigator.push(Routes.pokemonDetails, extra: pokemonDetail);
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                    content: Text('Carregando detalhes do Pokémon...')),
              );
            }
          },
          child: Container(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                imageUrl != null
                    ? Image.network(
                        imageUrl,
                        width: 50,
                        height: 50,
                        errorBuilder: (context, error, stackTrace) =>
                            const Icon(Icons.broken_image_outlined),
                      )
                    : const CircularProgressIndicator(),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        pokemonDetail?.name ?? 'Carregando...',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        pokemonDetail?.types.firstOrNull?.type.name ??
                            'Carregando...',
                        style: const TextStyle(
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      Text(
                        pokemonDetail?.id.toString() ?? 'Carregando...',
                        style: const TextStyle(
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
