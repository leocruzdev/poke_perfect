import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:poke_perfect/shared_model/pokemon.dart';

part 'pokemon_list_model.freezed.dart';
part 'pokemon_list_model.g.dart';

@HiveType(typeId: 1)
@freezed
class PokemonListModel with _$PokemonListModel {
  @HiveField(0)
  factory PokemonListModel({
    @HiveField(1) required int count,
    @HiveField(2) String? next,
    @HiveField(3) String? previous,
    @HiveField(4) required List<PokemonItem> results,
  }) = _PokemonListModel;

  factory PokemonListModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonListModelFromJson(json);
}
