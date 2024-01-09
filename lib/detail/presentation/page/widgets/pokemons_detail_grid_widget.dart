import 'package:flutter/material.dart';
import 'package:poke_perfect/detail/presentation/page/widgets/pokemon_property_widget.dart';
import 'package:poke_perfect/shared_model/pokemon_detail_domain.dart';

class PokemonPropertiesGrid extends StatelessWidget {
  final PokemonDetailDomain pokemonDetail;
  const PokemonPropertiesGrid({super.key, required this.pokemonDetail});

  @override
  Widget build(BuildContext context) {
    final properties = [
      {'title': 'ID', 'value': pokemonDetail.id.toString()},
      {'title': 'Nome', 'value': pokemonDetail.name},
      {'title': 'Tamanho', 'value': '${pokemonDetail.height}cm'},
      {
        'title': 'Tipo(s)',
        'value': pokemonDetail.types.map((t) => t.type.name).join(', ')
      },
      {
        'title': 'Habilidades',
        'value': pokemonDetail.abilities.map((a) => a.ability.name).join(', ')
      },
      {
        'title': 'Formas',
        'value': pokemonDetail.forms.map((f) => f.name).join(', ')
      },
      {
        'title': 'Ataques',
        'value': pokemonDetail.moves.map((m) => m.move.name).join(', ')
      },
      ...pokemonDetail.stats
          .map((s) => {'title': s.stat.name, 'value': s.baseStat.toString()}),
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
