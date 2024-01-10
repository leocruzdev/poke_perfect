import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:poke_perfect/home/presentation/bloc/home_bloc.dart';
import 'package:poke_perfect/home/presentation/bloc/home_event.dart';
import 'package:poke_perfect/platform/navigator/navigator.dart';
import 'package:poke_perfect/platform/navigator/routes.dart';
import 'package:poke_perfect/shared_model/pokemon_detail_domain.dart';

class PokemonListItem extends StatelessWidget {
  final PokemonItemDomain pokemon;

  const PokemonListItem({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navigator = GetIt.I<AppNavigator>();
    final imageUrl = context.read<HomeBloc>().imageCache[pokemon.url];
    final pokemonDetail = context.read<HomeBloc>().pokemonDetails[pokemon.url];

    if (imageUrl == null) {
      context.read<HomeBloc>().add(LoadImagePokemon(pokemon.url));
    }

    return InkWell(
      onTap: () {
        if (pokemonDetail != null) {
          navigator.push(Routes.pokemonDetails, extra: pokemonDetail);
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Carregando detalhes do Pokémon...')),
          );
        }
      },
      child: Container(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            imageUrl != null
                ? CachedNetworkImage(
                    imageUrl: imageUrl,
                    width: 50.w,
                    height: 50.h,
                    placeholder: (context, url) =>
                        const CircularProgressIndicator(),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.broken_image_outlined),
                  )
                : const CircularProgressIndicator(),
            SizedBox(width: 10.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    pokemonDetail?.name ?? 'Carregando...',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
                  ),
                  Text(
                    pokemonDetail?.types.firstOrNull?.type.name ??
                        'Carregando...',
                    style: const TextStyle(fontStyle: FontStyle.italic),
                  ),
                  Text(
                    pokemonDetail?.id.toString() ?? 'Carregando...',
                    style: const TextStyle(fontStyle: FontStyle.italic),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
