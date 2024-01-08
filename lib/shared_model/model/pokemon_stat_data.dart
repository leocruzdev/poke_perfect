import 'package:freezed_annotation/freezed_annotation.dart';

import 'named_api_resource_data.dart';

part 'pokemon_stat_data.freezed.dart';
part 'pokemon_stat_data.g.dart';

@freezed
class PokemonStatData with _$PokemonStatData {
  factory PokemonStatData({
    @JsonKey(name: 'base_stat') required int baseStat,
    required NamedApiResourceData stat,
  }) = _PokemonStatData;

  factory PokemonStatData.fromJson(Map<String, dynamic> json) =>
      _$PokemonStatDataFromJson(json);
}
