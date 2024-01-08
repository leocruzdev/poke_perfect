// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'named_api_resource_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NamedApiResourceData _$NamedApiResourceDataFromJson(Map<String, dynamic> json) {
  return _NamedApiResourceData.fromJson(json);
}

/// @nodoc
mixin _$NamedApiResourceData {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NamedApiResourceDataCopyWith<NamedApiResourceData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NamedApiResourceDataCopyWith<$Res> {
  factory $NamedApiResourceDataCopyWith(NamedApiResourceData value,
          $Res Function(NamedApiResourceData) then) =
      _$NamedApiResourceDataCopyWithImpl<$Res, NamedApiResourceData>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$NamedApiResourceDataCopyWithImpl<$Res,
        $Val extends NamedApiResourceData>
    implements $NamedApiResourceDataCopyWith<$Res> {
  _$NamedApiResourceDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NamedApiResourceDataCopyWith<$Res>
    implements $NamedApiResourceDataCopyWith<$Res> {
  factory _$$_NamedApiResourceDataCopyWith(_$_NamedApiResourceData value,
          $Res Function(_$_NamedApiResourceData) then) =
      __$$_NamedApiResourceDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$_NamedApiResourceDataCopyWithImpl<$Res>
    extends _$NamedApiResourceDataCopyWithImpl<$Res, _$_NamedApiResourceData>
    implements _$$_NamedApiResourceDataCopyWith<$Res> {
  __$$_NamedApiResourceDataCopyWithImpl(_$_NamedApiResourceData _value,
      $Res Function(_$_NamedApiResourceData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$_NamedApiResourceData(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NamedApiResourceData implements _NamedApiResourceData {
  _$_NamedApiResourceData({required this.name, required this.url});

  factory _$_NamedApiResourceData.fromJson(Map<String, dynamic> json) =>
      _$$_NamedApiResourceDataFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'NamedApiResourceData(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NamedApiResourceData &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NamedApiResourceDataCopyWith<_$_NamedApiResourceData> get copyWith =>
      __$$_NamedApiResourceDataCopyWithImpl<_$_NamedApiResourceData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NamedApiResourceDataToJson(
      this,
    );
  }
}

abstract class _NamedApiResourceData implements NamedApiResourceData {
  factory _NamedApiResourceData(
      {required final String name,
      required final String url}) = _$_NamedApiResourceData;

  factory _NamedApiResourceData.fromJson(Map<String, dynamic> json) =
      _$_NamedApiResourceData.fromJson;

  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_NamedApiResourceDataCopyWith<_$_NamedApiResourceData> get copyWith =>
      throw _privateConstructorUsedError;
}
