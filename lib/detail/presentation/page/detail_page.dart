import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:poke_perfect/home/domain/model/pokemon_model.dart';
import 'package:poke_perfect/platform/navigator/navigator.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    //TODO RECEBER O POKEMON DETAIL AQUI EM MEMÓRIA
    final Pokemon pokemon = GetIt.I<AppNavigator>().getExtras() as Pokemon;

    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes do Pokémon ${pokemon.name}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(pokemon.name),
            //TODO RECEBER O POKEMON DETAIL AQUI PokemonImage(url: pokemon.imageUrl),
            //TODO RECEBER O POKEMON DETAIL AQUI PokemonDetailExpansion(pokemonDetail: pokemon.detail),
          ],
        ),
      ),
      backgroundColor: Colors.grey[200],
    );
  }
}
