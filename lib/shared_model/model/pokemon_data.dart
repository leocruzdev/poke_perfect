import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poke_perfect/shared_model/model/ability_data.dart';
import 'package:poke_perfect/shared_model/model/pokemon_item_data.dart';
import 'package:poke_perfect/shared_model/model/pokemon_move_data.dart';
import 'package:poke_perfect/shared_model/model/pokemon_stat_data.dart';
import 'package:poke_perfect/shared_model/model/sprites_data.dart';

part 'pokemon_data.freezed.dart';
part 'pokemon_data.g.dart';

@freezed
class PokemonData with _$PokemonData {
  factory PokemonData({
    required int id,
    required String name,
    required int height,
    required List<PokemonItem> types,
    required SpritesData sprites,
    required List<AbilityData> abilities,
    required List<PokemonItem> forms,
    required List<PokemonMoveData> moves,
    required List<PokemonStatData> stats,
  }) = _PokemonData;

  factory PokemonData.fromJson(Map<String, dynamic> json) =>
      _$PokemonDataFromJson(json);
}
