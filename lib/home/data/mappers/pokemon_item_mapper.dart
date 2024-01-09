import 'package:poke_perfect/home/domain/model/pokemon_model.dart';
import 'package:poke_perfect/shared_model/model/pokemon_item_data.dart';

extension PokemonItemMapper on PokemonItem {
  Pokemon toDomain() {
    return Pokemon(
      name: name,
      url: url,
    );
  }
}
