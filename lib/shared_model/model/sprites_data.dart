import 'package:freezed_annotation/freezed_annotation.dart';

part 'sprites_data.freezed.dart';
part 'sprites_data.g.dart';

@freezed
class SpritesData with _$SpritesData {
  factory SpritesData({
    @JsonKey(name: 'front_default') required String frontDefault,
  }) = _SpritesData;

  factory SpritesData.fromJson(Map<String, dynamic> json) =>
      _$SpritesDataFromJson(json);
}
