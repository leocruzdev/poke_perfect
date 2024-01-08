import 'package:poke_perfect/shared_model/model/pokemon_move_data.dart';

extension PokemonMoveDataExtension on PokemonMoveData {
  String toDomain() {
    return move.name;
  }
}
