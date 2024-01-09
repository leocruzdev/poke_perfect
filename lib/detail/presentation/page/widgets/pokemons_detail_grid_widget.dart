import 'package:flutter/material.dart';
import 'package:poke_perfect/detail/presentation/page/widgets/pokemon_property_widget.dart';
import 'package:poke_perfect/shared_model/pokemon_domain.dart';

class PokemonPropertiesGrid extends StatelessWidget {
  final PokemonDomain pokemonDetail;
  const PokemonPropertiesGrid({super.key, required this.pokemonDetail});

  @override
  Widget build(BuildContext context) {
    final properties = [
      {'title': 'ID', 'value': pokemonDetail.id.toString()},
      {'title': 'Nome', 'value': pokemonDetail.name},
      {'title': 'Tamanho', 'value': '${pokemonDetail.height}cm'},
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
