// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_move_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonMoveData _$PokemonMoveDataFromJson(Map<String, dynamic> json) {
  return _PokemonMoveData.fromJson(json);
}

/// @nodoc
mixin _$PokemonMoveData {
  PokemonItem get move => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonMoveDataCopyWith<PokemonMoveData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonMoveDataCopyWith<$Res> {
  factory $PokemonMoveDataCopyWith(
          PokemonMoveData value, $Res Function(PokemonMoveData) then) =
      _$PokemonMoveDataCopyWithImpl<$Res, PokemonMoveData>;
  @useResult
  $Res call({PokemonItem move});

  $PokemonItemCopyWith<$Res> get move;
}

/// @nodoc
class _$PokemonMoveDataCopyWithImpl<$Res, $Val extends PokemonMoveData>
    implements $PokemonMoveDataCopyWith<$Res> {
  _$PokemonMoveDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? move = null,
  }) {
    return _then(_value.copyWith(
      move: null == move
          ? _value.move
          : move // ignore: cast_nullable_to_non_nullable
              as PokemonItem,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PokemonItemCopyWith<$Res> get move {
    return $PokemonItemCopyWith<$Res>(_value.move, (value) {
      return _then(_value.copyWith(move: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PokemonMoveDataCopyWith<$Res>
    implements $PokemonMoveDataCopyWith<$Res> {
  factory _$$_PokemonMoveDataCopyWith(
          _$_PokemonMoveData value, $Res Function(_$_PokemonMoveData) then) =
      __$$_PokemonMoveDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PokemonItem move});

  @override
  $PokemonItemCopyWith<$Res> get move;
}

/// @nodoc
class __$$_PokemonMoveDataCopyWithImpl<$Res>
    extends _$PokemonMoveDataCopyWithImpl<$Res, _$_PokemonMoveData>
    implements _$$_PokemonMoveDataCopyWith<$Res> {
  __$$_PokemonMoveDataCopyWithImpl(
      _$_PokemonMoveData _value, $Res Function(_$_PokemonMoveData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? move = null,
  }) {
    return _then(_$_PokemonMoveData(
      move: null == move
          ? _value.move
          : move // ignore: cast_nullable_to_non_nullable
              as PokemonItem,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonMoveData implements _PokemonMoveData {
  _$_PokemonMoveData({required this.move});

  factory _$_PokemonMoveData.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonMoveDataFromJson(json);

  @override
  final PokemonItem move;

  @override
  String toString() {
    return 'PokemonMoveData(move: $move)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonMoveData &&
            (identical(other.move, move) || other.move == move));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, move);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonMoveDataCopyWith<_$_PokemonMoveData> get copyWith =>
      __$$_PokemonMoveDataCopyWithImpl<_$_PokemonMoveData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonMoveDataToJson(
      this,
    );
  }
}

abstract class _PokemonMoveData implements PokemonMoveData {
  factory _PokemonMoveData({required final PokemonItem move}) =
      _$_PokemonMoveData;

  factory _PokemonMoveData.fromJson(Map<String, dynamic> json) =
      _$_PokemonMoveData.fromJson;

  @override
  PokemonItem get move;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonMoveDataCopyWith<_$_PokemonMoveData> get copyWith =>
      throw _privateConstructorUsedError;
}
