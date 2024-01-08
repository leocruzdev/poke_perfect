import 'package:freezed_annotation/freezed_annotation.dart';

part 'named_api_resource_data.freezed.dart';
part 'named_api_resource_data.g.dart';

@freezed
class NamedApiResourceData with _$NamedApiResourceData {
  factory NamedApiResourceData({
    required String name,
    required String url,
  }) = _NamedApiResourceData;

  factory NamedApiResourceData.fromJson(Map<String, dynamic> json) =>
      _$NamedApiResourceDataFromJson(json);
}
