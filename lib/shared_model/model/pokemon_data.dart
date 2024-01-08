import 'package:freezed_annotation/freezed_annotation.dart';

import 'ability_data.dart';
import 'named_api_resource_data.dart';
import 'pokemon_move_data.dart';
import 'pokemon_stat_data.dart';

part 'pokemon_data.freezed.dart';
part 'pokemon_data.g.dart';

@freezed
class PokemonData with _$PokemonData {
  factory PokemonData({
    required int id,
    required String name,
    required int? height,
    required List<NamedApiResourceData> types,
    required String imageUrl,
    required List<AbilityData> abilities,
    required List<NamedApiResourceData> forms,
    required List<PokemonMoveData> moves,
    required List<PokemonStatData> stats,
  }) = _PokemonData;

  factory PokemonData.fromJson(Map<String, dynamic> json) =>
      _$PokemonDataFromJson(json);
}
