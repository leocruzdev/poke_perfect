import 'package:poke_perfect/home/data/model/pokemon_item.dart';
import 'package:poke_perfect/home/domain/model/pokemon_model.dart';

extension PokemonItemMapper on PokemonItem {
  Pokemon toDomain() {
    return Pokemon(
      name: name,
      url: url,
    );
  }
}
