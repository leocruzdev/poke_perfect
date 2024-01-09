import 'package:flutter/material.dart';
import 'package:poke_perfect/detail/domain/model/pokemon_detail_model.dart';
import 'package:poke_perfect/detail/presentation/page/widgets/pokemon_property_widget.dart';

class PokemonPropertiesGrid extends StatelessWidget {
  final PokemonDetail pokemonDetail;
  const PokemonPropertiesGrid({super.key, required this.pokemonDetail});

  @override
  Widget build(BuildContext context) {
    final properties = [
      {'title': 'ID', 'value': pokemonDetail.id.toString()},
      {'title': 'Nome', 'value': pokemonDetail.name},
      {'title': 'Tamanho', 'value': '${pokemonDetail.height}cm'},
      {'title': 'Tipo(s)', 'value': pokemonDetail.types.join(', ')},
      {'title': 'Habilidades', 'value': pokemonDetail.abilities.join(', ')},
      {'title': 'Formas', 'value': pokemonDetail.forms.join(', ')},
      {'title': 'Ataques', 'value': pokemonDetail.moves.join(', ')},
      ...pokemonDetail.stats.entries
          .map((entry) => {'title': entry.key, 'value': entry.value.toString()})
          .toList(),
    ];

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 2,
      ),
      itemCount: properties.length,
      itemBuilder: (context, index) => PokemonProperty(
        title: properties[index]['title']!,
        value: properties[index]['value']!,
      ),
    );
  }
}
