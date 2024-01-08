import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'pokemon_item.freezed.dart';
part 'pokemon_item.g.dart';

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
