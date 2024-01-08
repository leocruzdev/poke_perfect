import 'package:poke_perfect/shared_model/model/ability_data.dart';

extension AbilityDataExtension on AbilityData {
  String toDomain() {
    return ability.name;
  }
}
