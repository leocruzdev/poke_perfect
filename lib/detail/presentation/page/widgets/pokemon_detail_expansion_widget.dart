import 'package:flutter/material.dart';
import 'package:poke_perfect/detail/domain/model/pokemon_detail_model.dart';
import 'package:poke_perfect/detail/presentation/page/widgets/pokemons_detail_grid_widget.dart';

class PokemonDetailExpansion extends StatefulWidget {
  final PokemonDetail pokemonDetail;

  const PokemonDetailExpansion({Key? key, required this.pokemonDetail})
      : super(key: key);

  @override
  _PokemonDetailExpansionState createState() => _PokemonDetailExpansionState();
}

class _PokemonDetailExpansionState extends State<PokemonDetailExpansion>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _sizeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );

    _sizeAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.fastOutSlowIn,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        InkWell(
          onTap: () => _controller.isDismissed
              ? _controller.forward()
              : _controller.reverse(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Text(
                  'Ver características',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                RotationTransition(
                  turns: _sizeAnimation,
                  child: const Icon(Icons.expand_more),
                ),
              ],
            ),
          ),
        ),
        SizeTransition(
          axisAlignment: 1.0,
          sizeFactor: _sizeAnimation,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: PokemonPropertiesGrid(pokemonDetail: widget.pokemonDetail),
          ),
        ),
      ],
    );
  }
}
