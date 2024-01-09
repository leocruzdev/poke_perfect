import 'package:poke_perfect/shared_model/model/pokemon_item_data.dart';

extension PokemonItemExtension on PokemonItem {
  String toDomain() {
    return name;
  }
}
