// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonListModel _$PokemonListModelFromJson(Map<String, dynamic> json) {
  return _PokemonListModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonListModel {
  @HiveField(1)
  int get count => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get next => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get previous => throw _privateConstructorUsedError;
  @HiveField(4)
  List<PokemonItem> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonListModelCopyWith<PokemonListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonListModelCopyWith<$Res> {
  factory $PokemonListModelCopyWith(
          PokemonListModel value, $Res Function(PokemonListModel) then) =
      _$PokemonListModelCopyWithImpl<$Res, PokemonListModel>;
  @useResult
  $Res call(
      {@HiveField(1) int count,
      @HiveField(2) String? next,
      @HiveField(3) String? previous,
      @HiveField(4) List<PokemonItem> results});
}

/// @nodoc
class _$PokemonListModelCopyWithImpl<$Res, $Val extends PokemonListModel>
    implements $PokemonListModelCopyWith<$Res> {
  _$PokemonListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PokemonItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PokemonListModelCopyWith<$Res>
    implements $PokemonListModelCopyWith<$Res> {
  factory _$$_PokemonListModelCopyWith(
          _$_PokemonListModel value, $Res Function(_$_PokemonListModel) then) =
      __$$_PokemonListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(1) int count,
      @HiveField(2) String? next,
      @HiveField(3) String? previous,
      @HiveField(4) List<PokemonItem> results});
}

/// @nodoc
class __$$_PokemonListModelCopyWithImpl<$Res>
    extends _$PokemonListModelCopyWithImpl<$Res, _$_PokemonListModel>
    implements _$$_PokemonListModelCopyWith<$Res> {
  __$$_PokemonListModelCopyWithImpl(
      _$_PokemonListModel _value, $Res Function(_$_PokemonListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(_$_PokemonListModel(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PokemonItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveField(0)
class _$_PokemonListModel implements _PokemonListModel {
  _$_PokemonListModel(
      {@HiveField(1) required this.count,
      @HiveField(2) this.next,
      @HiveField(3) this.previous,
      @HiveField(4) required final List<PokemonItem> results})
      : _results = results;

  factory _$_PokemonListModel.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonListModelFromJson(json);

  @override
  @HiveField(1)
  final int count;
  @override
  @HiveField(2)
  final String? next;
  @override
  @HiveField(3)
  final String? previous;
  final List<PokemonItem> _results;
  @override
  @HiveField(4)
  List<PokemonItem> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'PokemonListModel(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonListModel &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.previous, previous) ||
                other.previous == previous) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, next, previous,
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonListModelCopyWith<_$_PokemonListModel> get copyWith =>
      __$$_PokemonListModelCopyWithImpl<_$_PokemonListModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonListModelToJson(
      this,
    );
  }
}

abstract class _PokemonListModel implements PokemonListModel {
  factory _PokemonListModel(
          {@HiveField(1) required final int count,
          @HiveField(2) final String? next,
          @HiveField(3) final String? previous,
          @HiveField(4) required final List<PokemonItem> results}) =
      _$_PokemonListModel;

  factory _PokemonListModel.fromJson(Map<String, dynamic> json) =
      _$_PokemonListModel.fromJson;

  @override
  @HiveField(1)
  int get count;
  @override
  @HiveField(2)
  String? get next;
  @override
  @HiveField(3)
  String? get previous;
  @override
  @HiveField(4)
  List<PokemonItem> get results;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonListModelCopyWith<_$_PokemonListModel> get copyWith =>
      throw _privateConstructorUsedError;
}
