import 'package:freezed_annotation/freezed_annotation.dart';

import 'named_api_resource_data.dart';

part 'pokemon_move_data.freezed.dart';
part 'pokemon_move_data.g.dart';

@freezed
class PokemonMoveData with _$PokemonMoveData {
  factory PokemonMoveData({
    required NamedApiResourceData move,
  }) = _PokemonMoveData;

  factory PokemonMoveData.fromJson(Map<String, dynamic> json) =>
      _$PokemonMoveDataFromJson(json);
}
