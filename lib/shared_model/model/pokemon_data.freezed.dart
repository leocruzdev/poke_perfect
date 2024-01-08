// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonData _$PokemonDataFromJson(Map<String, dynamic> json) {
  return _PokemonData.fromJson(json);
}

/// @nodoc
mixin _$PokemonData {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  List<NamedApiResourceData> get types => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  List<AbilityData> get abilities => throw _privateConstructorUsedError;
  List<NamedApiResourceData> get forms => throw _privateConstructorUsedError;
  List<PokemonMoveData> get moves => throw _privateConstructorUsedError;
  List<PokemonStatData> get stats => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonDataCopyWith<PokemonData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonDataCopyWith<$Res> {
  factory $PokemonDataCopyWith(
          PokemonData value, $Res Function(PokemonData) then) =
      _$PokemonDataCopyWithImpl<$Res, PokemonData>;
  @useResult
  $Res call(
      {int id,
      String name,
      int? height,
      List<NamedApiResourceData> types,
      String imageUrl,
      List<AbilityData> abilities,
      List<NamedApiResourceData> forms,
      List<PokemonMoveData> moves,
      List<PokemonStatData> stats});
}

/// @nodoc
class _$PokemonDataCopyWithImpl<$Res, $Val extends PokemonData>
    implements $PokemonDataCopyWith<$Res> {
  _$PokemonDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? height = freezed,
    Object? types = null,
    Object? imageUrl = null,
    Object? abilities = null,
    Object? forms = null,
    Object? moves = null,
    Object? stats = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<NamedApiResourceData>,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      abilities: null == abilities
          ? _value.abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<AbilityData>,
      forms: null == forms
          ? _value.forms
          : forms // ignore: cast_nullable_to_non_nullable
              as List<NamedApiResourceData>,
      moves: null == moves
          ? _value.moves
          : moves // ignore: cast_nullable_to_non_nullable
              as List<PokemonMoveData>,
      stats: null == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<PokemonStatData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PokemonDataCopyWith<$Res>
    implements $PokemonDataCopyWith<$Res> {
  factory _$$_PokemonDataCopyWith(
          _$_PokemonData value, $Res Function(_$_PokemonData) then) =
      __$$_PokemonDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      int? height,
      List<NamedApiResourceData> types,
      String imageUrl,
      List<AbilityData> abilities,
      List<NamedApiResourceData> forms,
      List<PokemonMoveData> moves,
      List<PokemonStatData> stats});
}

/// @nodoc
class __$$_PokemonDataCopyWithImpl<$Res>
    extends _$PokemonDataCopyWithImpl<$Res, _$_PokemonData>
    implements _$$_PokemonDataCopyWith<$Res> {
  __$$_PokemonDataCopyWithImpl(
      _$_PokemonData _value, $Res Function(_$_PokemonData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? height = freezed,
    Object? types = null,
    Object? imageUrl = null,
    Object? abilities = null,
    Object? forms = null,
    Object? moves = null,
    Object? stats = null,
  }) {
    return _then(_$_PokemonData(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      types: null == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<NamedApiResourceData>,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      abilities: null == abilities
          ? _value._abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<AbilityData>,
      forms: null == forms
          ? _value._forms
          : forms // ignore: cast_nullable_to_non_nullable
              as List<NamedApiResourceData>,
      moves: null == moves
          ? _value._moves
          : moves // ignore: cast_nullable_to_non_nullable
              as List<PokemonMoveData>,
      stats: null == stats
          ? _value._stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<PokemonStatData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonData implements _PokemonData {
  _$_PokemonData(
      {required this.id,
      required this.name,
      required this.height,
      required final List<NamedApiResourceData> types,
      required this.imageUrl,
      required final List<AbilityData> abilities,
      required final List<NamedApiResourceData> forms,
      required final List<PokemonMoveData> moves,
      required final List<PokemonStatData> stats})
      : _types = types,
        _abilities = abilities,
        _forms = forms,
        _moves = moves,
        _stats = stats;

  factory _$_PokemonData.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonDataFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int? height;
  final List<NamedApiResourceData> _types;
  @override
  List<NamedApiResourceData> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  @override
  final String imageUrl;
  final List<AbilityData> _abilities;
  @override
  List<AbilityData> get abilities {
    if (_abilities is EqualUnmodifiableListView) return _abilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_abilities);
  }

  final List<NamedApiResourceData> _forms;
  @override
  List<NamedApiResourceData> get forms {
    if (_forms is EqualUnmodifiableListView) return _forms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_forms);
  }

  final List<PokemonMoveData> _moves;
  @override
  List<PokemonMoveData> get moves {
    if (_moves is EqualUnmodifiableListView) return _moves;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_moves);
  }

  final List<PokemonStatData> _stats;
  @override
  List<PokemonStatData> get stats {
    if (_stats is EqualUnmodifiableListView) return _stats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stats);
  }

  @override
  String toString() {
    return 'PokemonData(id: $id, name: $name, height: $height, types: $types, imageUrl: $imageUrl, abilities: $abilities, forms: $forms, moves: $moves, stats: $stats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.height, height) || other.height == height) &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            const DeepCollectionEquality()
                .equals(other._abilities, _abilities) &&
            const DeepCollectionEquality().equals(other._forms, _forms) &&
            const DeepCollectionEquality().equals(other._moves, _moves) &&
            const DeepCollectionEquality().equals(other._stats, _stats));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      height,
      const DeepCollectionEquality().hash(_types),
      imageUrl,
      const DeepCollectionEquality().hash(_abilities),
      const DeepCollectionEquality().hash(_forms),
      const DeepCollectionEquality().hash(_moves),
      const DeepCollectionEquality().hash(_stats));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonDataCopyWith<_$_PokemonData> get copyWith =>
      __$$_PokemonDataCopyWithImpl<_$_PokemonData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonDataToJson(
      this,
    );
  }
}

abstract class _PokemonData implements PokemonData {
  factory _PokemonData(
      {required final int id,
      required final String name,
      required final int? height,
      required final List<NamedApiResourceData> types,
      required final String imageUrl,
      required final List<AbilityData> abilities,
      required final List<NamedApiResourceData> forms,
      required final List<PokemonMoveData> moves,
      required final List<PokemonStatData> stats}) = _$_PokemonData;

  factory _PokemonData.fromJson(Map<String, dynamic> json) =
      _$_PokemonData.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int? get height;
  @override
  List<NamedApiResourceData> get types;
  @override
  String get imageUrl;
  @override
  List<AbilityData> get abilities;
  @override
  List<NamedApiResourceData> get forms;
  @override
  List<PokemonMoveData> get moves;
  @override
  List<PokemonStatData> get stats;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonDataCopyWith<_$_PokemonData> get copyWith =>
      throw _privateConstructorUsedError;
}
