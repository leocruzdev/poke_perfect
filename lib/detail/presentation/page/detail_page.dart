import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:poke_perfect/detail/presentation/page/widgets/pokemon_detail_expansion_widget.dart';
import 'package:poke_perfect/detail/presentation/page/widgets/pokemon_image_widget.dart';
import 'package:poke_perfect/platform/design_system/navigable_app_bar.dart';
import 'package:poke_perfect/platform/navigator/navigator.dart';
import 'package:poke_perfect/shared_model/pokemon_domain.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final PokemonDomain pokemonDetail =
        GetIt.I<AppNavigator>().getExtras() as PokemonDomain;

    return Scaffold(
      appBar: NavigableAppBar(
        leadingAction: () => GetIt.I<AppNavigator>().pop(),
        leadingIcon: Icons.arrow_back_ios_outlined,
        title: 'Detalhes de ${pokemonDetail.name}',
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: PokemonImage(url: pokemonDetail.sprites.frontDefault),
            ),
            PokemonDetailExpansion(pokemonDetail: pokemonDetail),
          ],
        ),
      ),
      backgroundColor: Colors.grey[200],
    );
  }
}
