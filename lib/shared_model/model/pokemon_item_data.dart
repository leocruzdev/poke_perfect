import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'pokemon_item_data.freezed.dart';
part 'pokemon_item_data.g.dart';

@HiveType(typeId: 0)
@freezed
class PokemonItem with _$PokemonItem {
  @HiveField(0)
  factory PokemonItem({
    @HiveField(1) required String name,
    @HiveField(2) required String url,
  }) = _PokemonItem;

  factory PokemonItem.fromJson(Map<String, dynamic> json) =>
      _$PokemonItemFromJson(json);
}
