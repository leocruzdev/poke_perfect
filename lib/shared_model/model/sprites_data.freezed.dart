// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sprites_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SpritesData _$SpritesDataFromJson(Map<String, dynamic> json) {
  return _SpritesData.fromJson(json);
}

/// @nodoc
mixin _$SpritesData {
  @JsonKey(name: 'front_default')
  String get frontDefault => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpritesDataCopyWith<SpritesData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpritesDataCopyWith<$Res> {
  factory $SpritesDataCopyWith(
          SpritesData value, $Res Function(SpritesData) then) =
      _$SpritesDataCopyWithImpl<$Res, SpritesData>;
  @useResult
  $Res call({@JsonKey(name: 'front_default') String frontDefault});
}

/// @nodoc
class _$SpritesDataCopyWithImpl<$Res, $Val extends SpritesData>
    implements $SpritesDataCopyWith<$Res> {
  _$SpritesDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = null,
  }) {
    return _then(_value.copyWith(
      frontDefault: null == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SpritesDataCopyWith<$Res>
    implements $SpritesDataCopyWith<$Res> {
  factory _$$_SpritesDataCopyWith(
          _$_SpritesData value, $Res Function(_$_SpritesData) then) =
      __$$_SpritesDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'front_default') String frontDefault});
}

/// @nodoc
class __$$_SpritesDataCopyWithImpl<$Res>
    extends _$SpritesDataCopyWithImpl<$Res, _$_SpritesData>
    implements _$$_SpritesDataCopyWith<$Res> {
  __$$_SpritesDataCopyWithImpl(
      _$_SpritesData _value, $Res Function(_$_SpritesData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = null,
  }) {
    return _then(_$_SpritesData(
      frontDefault: null == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SpritesData implements _SpritesData {
  _$_SpritesData({@JsonKey(name: 'front_default') required this.frontDefault});

  factory _$_SpritesData.fromJson(Map<String, dynamic> json) =>
      _$$_SpritesDataFromJson(json);

  @override
  @JsonKey(name: 'front_default')
  final String frontDefault;

  @override
  String toString() {
    return 'SpritesData(frontDefault: $frontDefault)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SpritesData &&
            (identical(other.frontDefault, frontDefault) ||
                other.frontDefault == frontDefault));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, frontDefault);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SpritesDataCopyWith<_$_SpritesData> get copyWith =>
      __$$_SpritesDataCopyWithImpl<_$_SpritesData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpritesDataToJson(
      this,
    );
  }
}

abstract class _SpritesData implements SpritesData {
  factory _SpritesData(
      {@JsonKey(name: 'front_default')
      required final String frontDefault}) = _$_SpritesData;

  factory _SpritesData.fromJson(Map<String, dynamic> json) =
      _$_SpritesData.fromJson;

  @override
  @JsonKey(name: 'front_default')
  String get frontDefault;
  @override
  @JsonKey(ignore: true)
  _$$_SpritesDataCopyWith<_$_SpritesData> get copyWith =>
      throw _privateConstructorUsedError;
}
