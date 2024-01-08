import 'package:freezed_annotation/freezed_annotation.dart';

import 'named_api_resource_data.dart';

part 'ability_data.freezed.dart';
part 'ability_data.g.dart';

@freezed
class AbilityData with _$AbilityData {
  factory AbilityData({
    required NamedApiResourceData ability,
  }) = _AbilityData;

  factory AbilityData.fromJson(Map<String, dynamic> json) =>
      _$AbilityDataFromJson(json);
}
