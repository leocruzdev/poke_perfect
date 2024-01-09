// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_item_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonItem _$PokemonItemFromJson(Map<String, dynamic> json) {
  return _PokemonItem.fromJson(json);
}

/// @nodoc
mixin _$PokemonItem {
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @HiveField(2)
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonItemCopyWith<PokemonItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonItemCopyWith<$Res> {
  factory $PokemonItemCopyWith(
          PokemonItem value, $Res Function(PokemonItem) then) =
      _$PokemonItemCopyWithImpl<$Res, PokemonItem>;
  @useResult
  $Res call({@HiveField(1) String name, @HiveField(2) String url});
}

/// @nodoc
class _$PokemonItemCopyWithImpl<$Res, $Val extends PokemonItem>
    implements $PokemonItemCopyWith<$Res> {
  _$PokemonItemCopyWithImpl(this._value, this._then);

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
abstract class _$$_PokemonItemCopyWith<$Res>
    implements $PokemonItemCopyWith<$Res> {
  factory _$$_PokemonItemCopyWith(
          _$_PokemonItem value, $Res Function(_$_PokemonItem) then) =
      __$$_PokemonItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(1) String name, @HiveField(2) String url});
}

/// @nodoc
class __$$_PokemonItemCopyWithImpl<$Res>
    extends _$PokemonItemCopyWithImpl<$Res, _$_PokemonItem>
    implements _$$_PokemonItemCopyWith<$Res> {
  __$$_PokemonItemCopyWithImpl(
      _$_PokemonItem _value, $Res Function(_$_PokemonItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$_PokemonItem(
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
@HiveField(0)
class _$_PokemonItem implements _PokemonItem {
  _$_PokemonItem(
      {@HiveField(1) required this.name, @HiveField(2) required this.url});

  factory _$_PokemonItem.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonItemFromJson(json);

  @override
  @HiveField(1)
  final String name;
  @override
  @HiveField(2)
  final String url;

  @override
  String toString() {
    return 'PokemonItem(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonItem &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonItemCopyWith<_$_PokemonItem> get copyWith =>
      __$$_PokemonItemCopyWithImpl<_$_PokemonItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonItemToJson(
      this,
    );
  }
}

abstract class _PokemonItem implements PokemonItem {
  factory _PokemonItem(
      {@HiveField(1) required final String name,
      @HiveField(2) required final String url}) = _$_PokemonItem;

  factory _PokemonItem.fromJson(Map<String, dynamic> json) =
      _$_PokemonItem.fromJson;

  @override
  @HiveField(1)
  String get name;
  @override
  @HiveField(2)
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonItemCopyWith<_$_PokemonItem> get copyWith =>
      throw _privateConstructorUsedError;
}
