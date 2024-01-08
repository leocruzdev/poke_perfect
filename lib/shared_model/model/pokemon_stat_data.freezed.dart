// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_stat_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonStatData _$PokemonStatDataFromJson(Map<String, dynamic> json) {
  return _PokemonStatData.fromJson(json);
}

/// @nodoc
mixin _$PokemonStatData {
  @JsonKey(name: 'base_stat')
  int get baseStat => throw _privateConstructorUsedError;
  NamedApiResourceData get stat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonStatDataCopyWith<PokemonStatData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonStatDataCopyWith<$Res> {
  factory $PokemonStatDataCopyWith(
          PokemonStatData value, $Res Function(PokemonStatData) then) =
      _$PokemonStatDataCopyWithImpl<$Res, PokemonStatData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'base_stat') int baseStat, NamedApiResourceData stat});

  $NamedApiResourceDataCopyWith<$Res> get stat;
}

/// @nodoc
class _$PokemonStatDataCopyWithImpl<$Res, $Val extends PokemonStatData>
    implements $PokemonStatDataCopyWith<$Res> {
  _$PokemonStatDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseStat = null,
    Object? stat = null,
  }) {
    return _then(_value.copyWith(
      baseStat: null == baseStat
          ? _value.baseStat
          : baseStat // ignore: cast_nullable_to_non_nullable
              as int,
      stat: null == stat
          ? _value.stat
          : stat // ignore: cast_nullable_to_non_nullable
              as NamedApiResourceData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NamedApiResourceDataCopyWith<$Res> get stat {
    return $NamedApiResourceDataCopyWith<$Res>(_value.stat, (value) {
      return _then(_value.copyWith(stat: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PokemonStatDataCopyWith<$Res>
    implements $PokemonStatDataCopyWith<$Res> {
  factory _$$_PokemonStatDataCopyWith(
          _$_PokemonStatData value, $Res Function(_$_PokemonStatData) then) =
      __$$_PokemonStatDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'base_stat') int baseStat, NamedApiResourceData stat});

  @override
  $NamedApiResourceDataCopyWith<$Res> get stat;
}

/// @nodoc
class __$$_PokemonStatDataCopyWithImpl<$Res>
    extends _$PokemonStatDataCopyWithImpl<$Res, _$_PokemonStatData>
    implements _$$_PokemonStatDataCopyWith<$Res> {
  __$$_PokemonStatDataCopyWithImpl(
      _$_PokemonStatData _value, $Res Function(_$_PokemonStatData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseStat = null,
    Object? stat = null,
  }) {
    return _then(_$_PokemonStatData(
      baseStat: null == baseStat
          ? _value.baseStat
          : baseStat // ignore: cast_nullable_to_non_nullable
              as int,
      stat: null == stat
          ? _value.stat
          : stat // ignore: cast_nullable_to_non_nullable
              as NamedApiResourceData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonStatData implements _PokemonStatData {
  _$_PokemonStatData(
      {@JsonKey(name: 'base_stat') required this.baseStat, required this.stat});

  factory _$_PokemonStatData.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonStatDataFromJson(json);

  @override
  @JsonKey(name: 'base_stat')
  final int baseStat;
  @override
  final NamedApiResourceData stat;

  @override
  String toString() {
    return 'PokemonStatData(baseStat: $baseStat, stat: $stat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonStatData &&
            (identical(other.baseStat, baseStat) ||
                other.baseStat == baseStat) &&
            (identical(other.stat, stat) || other.stat == stat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, baseStat, stat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonStatDataCopyWith<_$_PokemonStatData> get copyWith =>
      __$$_PokemonStatDataCopyWithImpl<_$_PokemonStatData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonStatDataToJson(
      this,
    );
  }
}

abstract class _PokemonStatData implements PokemonStatData {
  factory _PokemonStatData(
      {@JsonKey(name: 'base_stat') required final int baseStat,
      required final NamedApiResourceData stat}) = _$_PokemonStatData;

  factory _PokemonStatData.fromJson(Map<String, dynamic> json) =
      _$_PokemonStatData.fromJson;

  @override
  @JsonKey(name: 'base_stat')
  int get baseStat;
  @override
  NamedApiResourceData get stat;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonStatDataCopyWith<_$_PokemonStatData> get copyWith =>
      throw _privateConstructorUsedError;
}
