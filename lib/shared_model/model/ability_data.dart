import 'package:freezed_annotation/freezed_annotation.dart';

import 'pokemon_item_data.dart';

part 'ability_data.freezed.dart';
part 'ability_data.g.dart';

@freezed
class AbilityData with _$AbilityData {
  factory AbilityData({
    required PokemonItem ability,
  }) = _AbilityData;

  factory AbilityData.fromJson(Map<String, dynamic> json) =>
      _$AbilityDataFromJson(json);
}
