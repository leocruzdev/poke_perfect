import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:poke_perfect/home/domain/model/pokemon_model.dart';
import 'package:poke_perfect/home/presentation/bloc/home_bloc.dart';
import 'package:poke_perfect/home/presentation/bloc/home_event.dart';
import 'package:poke_perfect/platform/navigator/navigator.dart';
import 'package:poke_perfect/platform/navigator/routes.dart';

class PokemonListItem extends StatelessWidget {
  final Pokemon pokemon;

  const PokemonListItem({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navigator = GetIt.I<AppNavigator>();
    final imageUrl = context.read<HomeBloc>().imageCache[pokemon.url];

    if (imageUrl == null) {
      context.read<HomeBloc>().add(LoadImagePokemon(pokemon.url));
    }

    return ListTile(
      title: Text(pokemon.name),
      subtitle: Text(pokemon.url),
      onTap: () => navigator.push(Routes.pokemonDetails, extra: pokemon),
      leading: imageUrl != null
          ? Image.network(
              imageUrl,
              width: 50,
              errorBuilder: (context, error, stackTrace) =>
                  const Icon(Icons.broken_image_outlined),
            )
          : const CircularProgressIndicator(),
    );
  }
}
