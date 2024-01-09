// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ability_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AbilityData _$AbilityDataFromJson(Map<String, dynamic> json) {
  return _AbilityData.fromJson(json);
}

/// @nodoc
mixin _$AbilityData {
  PokemonItem get ability => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AbilityDataCopyWith<AbilityData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbilityDataCopyWith<$Res> {
  factory $AbilityDataCopyWith(
          AbilityData value, $Res Function(AbilityData) then) =
      _$AbilityDataCopyWithImpl<$Res, AbilityData>;
  @useResult
  $Res call({PokemonItem ability});

  $PokemonItemCopyWith<$Res> get ability;
}

/// @nodoc
class _$AbilityDataCopyWithImpl<$Res, $Val extends AbilityData>
    implements $AbilityDataCopyWith<$Res> {
  _$AbilityDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ability = null,
  }) {
    return _then(_value.copyWith(
      ability: null == ability
          ? _value.ability
          : ability // ignore: cast_nullable_to_non_nullable
              as PokemonItem,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PokemonItemCopyWith<$Res> get ability {
    return $PokemonItemCopyWith<$Res>(_value.ability, (value) {
      return _then(_value.copyWith(ability: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AbilityDataCopyWith<$Res>
    implements $AbilityDataCopyWith<$Res> {
  factory _$$_AbilityDataCopyWith(
          _$_AbilityData value, $Res Function(_$_AbilityData) then) =
      __$$_AbilityDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PokemonItem ability});

  @override
  $PokemonItemCopyWith<$Res> get ability;
}

/// @nodoc
class __$$_AbilityDataCopyWithImpl<$Res>
    extends _$AbilityDataCopyWithImpl<$Res, _$_AbilityData>
    implements _$$_AbilityDataCopyWith<$Res> {
  __$$_AbilityDataCopyWithImpl(
      _$_AbilityData _value, $Res Function(_$_AbilityData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ability = null,
  }) {
    return _then(_$_AbilityData(
      ability: null == ability
          ? _value.ability
          : ability // ignore: cast_nullable_to_non_nullable
              as PokemonItem,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AbilityData implements _AbilityData {
  _$_AbilityData({required this.ability});

  factory _$_AbilityData.fromJson(Map<String, dynamic> json) =>
      _$$_AbilityDataFromJson(json);

  @override
  final PokemonItem ability;

  @override
  String toString() {
    return 'AbilityData(ability: $ability)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AbilityData &&
            (identical(other.ability, ability) || other.ability == ability));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ability);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AbilityDataCopyWith<_$_AbilityData> get copyWith =>
      __$$_AbilityDataCopyWithImpl<_$_AbilityData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AbilityDataToJson(
      this,
    );
  }
}

abstract class _AbilityData implements AbilityData {
  factory _AbilityData({required final PokemonItem ability}) = _$_AbilityData;

  factory _AbilityData.fromJson(Map<String, dynamic> json) =
      _$_AbilityData.fromJson;

  @override
  PokemonItem get ability;
  @override
  @JsonKey(ignore: true)
  _$$_AbilityDataCopyWith<_$_AbilityData> get copyWith =>
      throw _privateConstructorUsedError;
}
