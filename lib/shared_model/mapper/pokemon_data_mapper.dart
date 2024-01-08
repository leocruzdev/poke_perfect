import 'package:poke_perfect/detail/domain/model/pokemon_detail_model.dart';
import 'package:poke_perfect/shared_model/mapper/ability_data_mapper.dart';
import 'package:poke_perfect/shared_model/mapper/named_api_resource_data_mapper.dart';
import 'package:poke_perfect/shared_model/model/pokemon_data.dart';

extension PokemonDataExtension on PokemonData {
  PokemonDetail toDomain() {
    return PokemonDetail(
      id: id,
      name: name,
      height: height,
      types: types.map((type) => type.toDomain()).toList(),
      imageUrl: imageUrl,
      abilities: abilities.map((ability) => ability.toDomain()).toList(),
      forms: forms.map((form) => form.toDomain()).toList(),
      moves: moves.map((move) => move.move.name).toList(),
      stats: stats
          .map((stat) => {stat.stat.name: stat.baseStat})
          .fold({}, (map, element) => map..addAll(element)),
    );
  }
}
