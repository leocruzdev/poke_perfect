import 'package:poke_perfect/shared_model/model/pokemon_stat_data.dart';

extension PokemonStatDataExtension on List<PokemonStatData> {
  Map<String, int> toDomain() {
    return {for (var statData in this) statData.stat.name: statData.baseStat};
  }
}
