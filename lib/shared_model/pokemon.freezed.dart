// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Pokemon _$PokemonFromJson(Map<String, dynamic> json) {
  return _Pokemon.fromJson(json);
}

/// @nodoc
mixin _$Pokemon {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'base_experience')
  int get baseExperience => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_default')
  bool get isDefault => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;
  List<PokemonAbility> get abilities => throw _privateConstructorUsedError;
  List<PokemonItem> get forms => throw _privateConstructorUsedError;
  @JsonKey(name: 'game_indices')
  List<VersionGameIndex> get gameIndices => throw _privateConstructorUsedError;
  @JsonKey(name: 'held_items')
  List<PokemonHeldItem> get heldItems => throw _privateConstructorUsedError;
  @JsonKey(name: 'location_area_encounters')
  String get locationAreaEncounters => throw _privateConstructorUsedError;
  List<PokemonMove> get moves => throw _privateConstructorUsedError;
  @JsonKey(name: 'past_types')
  List<PokemonTypePast> get pastTypes => throw _privateConstructorUsedError;
  PokemonSprites get sprites => throw _privateConstructorUsedError;
  PokemonItem get species => throw _privateConstructorUsedError;
  List<PokemonStat> get stats => throw _privateConstructorUsedError;
  List<PokemonType> get types => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonCopyWith<Pokemon> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonCopyWith<$Res> {
  factory $PokemonCopyWith(Pokemon value, $Res Function(Pokemon) then) =
      _$PokemonCopyWithImpl<$Res, Pokemon>;
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'base_experience') int baseExperience,
      int height,
      @JsonKey(name: 'is_default') bool isDefault,
      int order,
      int weight,
      List<PokemonAbility> abilities,
      List<PokemonItem> forms,
      @JsonKey(name: 'game_indices') List<VersionGameIndex> gameIndices,
      @JsonKey(name: 'held_items') List<PokemonHeldItem> heldItems,
      @JsonKey(name: 'location_area_encounters') String locationAreaEncounters,
      List<PokemonMove> moves,
      @JsonKey(name: 'past_types') List<PokemonTypePast> pastTypes,
      PokemonSprites sprites,
      PokemonItem species,
      List<PokemonStat> stats,
      List<PokemonType> types});

  $PokemonSpritesCopyWith<$Res> get sprites;
  $PokemonItemCopyWith<$Res> get species;
}

/// @nodoc
class _$PokemonCopyWithImpl<$Res, $Val extends Pokemon>
    implements $PokemonCopyWith<$Res> {
  _$PokemonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? baseExperience = null,
    Object? height = null,
    Object? isDefault = null,
    Object? order = null,
    Object? weight = null,
    Object? abilities = null,
    Object? forms = null,
    Object? gameIndices = null,
    Object? heldItems = null,
    Object? locationAreaEncounters = null,
    Object? moves = null,
    Object? pastTypes = null,
    Object? sprites = null,
    Object? species = null,
    Object? stats = null,
    Object? types = null,
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
      baseExperience: null == baseExperience
          ? _value.baseExperience
          : baseExperience // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      abilities: null == abilities
          ? _value.abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<PokemonAbility>,
      forms: null == forms
          ? _value.forms
          : forms // ignore: cast_nullable_to_non_nullable
              as List<PokemonItem>,
      gameIndices: null == gameIndices
          ? _value.gameIndices
          : gameIndices // ignore: cast_nullable_to_non_nullable
              as List<VersionGameIndex>,
      heldItems: null == heldItems
          ? _value.heldItems
          : heldItems // ignore: cast_nullable_to_non_nullable
              as List<PokemonHeldItem>,
      locationAreaEncounters: null == locationAreaEncounters
          ? _value.locationAreaEncounters
          : locationAreaEncounters // ignore: cast_nullable_to_non_nullable
              as String,
      moves: null == moves
          ? _value.moves
          : moves // ignore: cast_nullable_to_non_nullable
              as List<PokemonMove>,
      pastTypes: null == pastTypes
          ? _value.pastTypes
          : pastTypes // ignore: cast_nullable_to_non_nullable
              as List<PokemonTypePast>,
      sprites: null == sprites
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as PokemonSprites,
      species: null == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as PokemonItem,
      stats: null == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<PokemonStat>,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<PokemonType>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PokemonSpritesCopyWith<$Res> get sprites {
    return $PokemonSpritesCopyWith<$Res>(_value.sprites, (value) {
      return _then(_value.copyWith(sprites: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PokemonItemCopyWith<$Res> get species {
    return $PokemonItemCopyWith<$Res>(_value.species, (value) {
      return _then(_value.copyWith(species: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PokemonCopyWith<$Res> implements $PokemonCopyWith<$Res> {
  factory _$$_PokemonCopyWith(
          _$_Pokemon value, $Res Function(_$_Pokemon) then) =
      __$$_PokemonCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'base_experience') int baseExperience,
      int height,
      @JsonKey(name: 'is_default') bool isDefault,
      int order,
      int weight,
      List<PokemonAbility> abilities,
      List<PokemonItem> forms,
      @JsonKey(name: 'game_indices') List<VersionGameIndex> gameIndices,
      @JsonKey(name: 'held_items') List<PokemonHeldItem> heldItems,
      @JsonKey(name: 'location_area_encounters') String locationAreaEncounters,
      List<PokemonMove> moves,
      @JsonKey(name: 'past_types') List<PokemonTypePast> pastTypes,
      PokemonSprites sprites,
      PokemonItem species,
      List<PokemonStat> stats,
      List<PokemonType> types});

  @override
  $PokemonSpritesCopyWith<$Res> get sprites;
  @override
  $PokemonItemCopyWith<$Res> get species;
}

/// @nodoc
class __$$_PokemonCopyWithImpl<$Res>
    extends _$PokemonCopyWithImpl<$Res, _$_Pokemon>
    implements _$$_PokemonCopyWith<$Res> {
  __$$_PokemonCopyWithImpl(_$_Pokemon _value, $Res Function(_$_Pokemon) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? baseExperience = null,
    Object? height = null,
    Object? isDefault = null,
    Object? order = null,
    Object? weight = null,
    Object? abilities = null,
    Object? forms = null,
    Object? gameIndices = null,
    Object? heldItems = null,
    Object? locationAreaEncounters = null,
    Object? moves = null,
    Object? pastTypes = null,
    Object? sprites = null,
    Object? species = null,
    Object? stats = null,
    Object? types = null,
  }) {
    return _then(_$_Pokemon(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      baseExperience: null == baseExperience
          ? _value.baseExperience
          : baseExperience // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      abilities: null == abilities
          ? _value._abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<PokemonAbility>,
      forms: null == forms
          ? _value._forms
          : forms // ignore: cast_nullable_to_non_nullable
              as List<PokemonItem>,
      gameIndices: null == gameIndices
          ? _value._gameIndices
          : gameIndices // ignore: cast_nullable_to_non_nullable
              as List<VersionGameIndex>,
      heldItems: null == heldItems
          ? _value._heldItems
          : heldItems // ignore: cast_nullable_to_non_nullable
              as List<PokemonHeldItem>,
      locationAreaEncounters: null == locationAreaEncounters
          ? _value.locationAreaEncounters
          : locationAreaEncounters // ignore: cast_nullable_to_non_nullable
              as String,
      moves: null == moves
          ? _value._moves
          : moves // ignore: cast_nullable_to_non_nullable
              as List<PokemonMove>,
      pastTypes: null == pastTypes
          ? _value._pastTypes
          : pastTypes // ignore: cast_nullable_to_non_nullable
              as List<PokemonTypePast>,
      sprites: null == sprites
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as PokemonSprites,
      species: null == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as PokemonItem,
      stats: null == stats
          ? _value._stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<PokemonStat>,
      types: null == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<PokemonType>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Pokemon implements _Pokemon {
  const _$_Pokemon(
      {required this.id,
      required this.name,
      @JsonKey(name: 'base_experience') required this.baseExperience,
      required this.height,
      @JsonKey(name: 'is_default') required this.isDefault,
      required this.order,
      required this.weight,
      required final List<PokemonAbility> abilities,
      required final List<PokemonItem> forms,
      @JsonKey(name: 'game_indices')
      required final List<VersionGameIndex> gameIndices,
      @JsonKey(name: 'held_items')
      required final List<PokemonHeldItem> heldItems,
      @JsonKey(name: 'location_area_encounters')
      required this.locationAreaEncounters,
      required final List<PokemonMove> moves,
      @JsonKey(name: 'past_types')
      required final List<PokemonTypePast> pastTypes,
      required this.sprites,
      required this.species,
      required final List<PokemonStat> stats,
      required final List<PokemonType> types})
      : _abilities = abilities,
        _forms = forms,
        _gameIndices = gameIndices,
        _heldItems = heldItems,
        _moves = moves,
        _pastTypes = pastTypes,
        _stats = stats,
        _types = types;

  factory _$_Pokemon.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'base_experience')
  final int baseExperience;
  @override
  final int height;
  @override
  @JsonKey(name: 'is_default')
  final bool isDefault;
  @override
  final int order;
  @override
  final int weight;
  final List<PokemonAbility> _abilities;
  @override
  List<PokemonAbility> get abilities {
    if (_abilities is EqualUnmodifiableListView) return _abilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_abilities);
  }

  final List<PokemonItem> _forms;
  @override
  List<PokemonItem> get forms {
    if (_forms is EqualUnmodifiableListView) return _forms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_forms);
  }

  final List<VersionGameIndex> _gameIndices;
  @override
  @JsonKey(name: 'game_indices')
  List<VersionGameIndex> get gameIndices {
    if (_gameIndices is EqualUnmodifiableListView) return _gameIndices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_gameIndices);
  }

  final List<PokemonHeldItem> _heldItems;
  @override
  @JsonKey(name: 'held_items')
  List<PokemonHeldItem> get heldItems {
    if (_heldItems is EqualUnmodifiableListView) return _heldItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_heldItems);
  }

  @override
  @JsonKey(name: 'location_area_encounters')
  final String locationAreaEncounters;
  final List<PokemonMove> _moves;
  @override
  List<PokemonMove> get moves {
    if (_moves is EqualUnmodifiableListView) return _moves;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_moves);
  }

  final List<PokemonTypePast> _pastTypes;
  @override
  @JsonKey(name: 'past_types')
  List<PokemonTypePast> get pastTypes {
    if (_pastTypes is EqualUnmodifiableListView) return _pastTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pastTypes);
  }

  @override
  final PokemonSprites sprites;
  @override
  final PokemonItem species;
  final List<PokemonStat> _stats;
  @override
  List<PokemonStat> get stats {
    if (_stats is EqualUnmodifiableListView) return _stats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stats);
  }

  final List<PokemonType> _types;
  @override
  List<PokemonType> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  @override
  String toString() {
    return 'Pokemon(id: $id, name: $name, baseExperience: $baseExperience, height: $height, isDefault: $isDefault, order: $order, weight: $weight, abilities: $abilities, forms: $forms, gameIndices: $gameIndices, heldItems: $heldItems, locationAreaEncounters: $locationAreaEncounters, moves: $moves, pastTypes: $pastTypes, sprites: $sprites, species: $species, stats: $stats, types: $types)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Pokemon &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.baseExperience, baseExperience) ||
                other.baseExperience == baseExperience) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            const DeepCollectionEquality()
                .equals(other._abilities, _abilities) &&
            const DeepCollectionEquality().equals(other._forms, _forms) &&
            const DeepCollectionEquality()
                .equals(other._gameIndices, _gameIndices) &&
            const DeepCollectionEquality()
                .equals(other._heldItems, _heldItems) &&
            (identical(other.locationAreaEncounters, locationAreaEncounters) ||
                other.locationAreaEncounters == locationAreaEncounters) &&
            const DeepCollectionEquality().equals(other._moves, _moves) &&
            const DeepCollectionEquality()
                .equals(other._pastTypes, _pastTypes) &&
            (identical(other.sprites, sprites) || other.sprites == sprites) &&
            (identical(other.species, species) || other.species == species) &&
            const DeepCollectionEquality().equals(other._stats, _stats) &&
            const DeepCollectionEquality().equals(other._types, _types));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      baseExperience,
      height,
      isDefault,
      order,
      weight,
      const DeepCollectionEquality().hash(_abilities),
      const DeepCollectionEquality().hash(_forms),
      const DeepCollectionEquality().hash(_gameIndices),
      const DeepCollectionEquality().hash(_heldItems),
      locationAreaEncounters,
      const DeepCollectionEquality().hash(_moves),
      const DeepCollectionEquality().hash(_pastTypes),
      sprites,
      species,
      const DeepCollectionEquality().hash(_stats),
      const DeepCollectionEquality().hash(_types));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonCopyWith<_$_Pokemon> get copyWith =>
      __$$_PokemonCopyWithImpl<_$_Pokemon>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonToJson(
      this,
    );
  }
}

abstract class _Pokemon implements Pokemon {
  const factory _Pokemon(
      {required final int id,
      required final String name,
      @JsonKey(name: 'base_experience') required final int baseExperience,
      required final int height,
      @JsonKey(name: 'is_default') required final bool isDefault,
      required final int order,
      required final int weight,
      required final List<PokemonAbility> abilities,
      required final List<PokemonItem> forms,
      @JsonKey(name: 'game_indices')
      required final List<VersionGameIndex> gameIndices,
      @JsonKey(name: 'held_items')
      required final List<PokemonHeldItem> heldItems,
      @JsonKey(name: 'location_area_encounters')
      required final String locationAreaEncounters,
      required final List<PokemonMove> moves,
      @JsonKey(name: 'past_types')
      required final List<PokemonTypePast> pastTypes,
      required final PokemonSprites sprites,
      required final PokemonItem species,
      required final List<PokemonStat> stats,
      required final List<PokemonType> types}) = _$_Pokemon;

  factory _Pokemon.fromJson(Map<String, dynamic> json) = _$_Pokemon.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'base_experience')
  int get baseExperience;
  @override
  int get height;
  @override
  @JsonKey(name: 'is_default')
  bool get isDefault;
  @override
  int get order;
  @override
  int get weight;
  @override
  List<PokemonAbility> get abilities;
  @override
  List<PokemonItem> get forms;
  @override
  @JsonKey(name: 'game_indices')
  List<VersionGameIndex> get gameIndices;
  @override
  @JsonKey(name: 'held_items')
  List<PokemonHeldItem> get heldItems;
  @override
  @JsonKey(name: 'location_area_encounters')
  String get locationAreaEncounters;
  @override
  List<PokemonMove> get moves;
  @override
  @JsonKey(name: 'past_types')
  List<PokemonTypePast> get pastTypes;
  @override
  PokemonSprites get sprites;
  @override
  PokemonItem get species;
  @override
  List<PokemonStat> get stats;
  @override
  List<PokemonType> get types;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonCopyWith<_$_Pokemon> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonAbility _$PokemonAbilityFromJson(Map<String, dynamic> json) {
  return _PokemonAbility.fromJson(json);
}

/// @nodoc
mixin _$PokemonAbility {
  @JsonKey(name: 'is_hidden')
  bool get isHidden => throw _privateConstructorUsedError;
  int get slot => throw _privateConstructorUsedError;
  PokemonItem get ability => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonAbilityCopyWith<PokemonAbility> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonAbilityCopyWith<$Res> {
  factory $PokemonAbilityCopyWith(
          PokemonAbility value, $Res Function(PokemonAbility) then) =
      _$PokemonAbilityCopyWithImpl<$Res, PokemonAbility>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is_hidden') bool isHidden,
      int slot,
      PokemonItem ability});

  $PokemonItemCopyWith<$Res> get ability;
}

/// @nodoc
class _$PokemonAbilityCopyWithImpl<$Res, $Val extends PokemonAbility>
    implements $PokemonAbilityCopyWith<$Res> {
  _$PokemonAbilityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isHidden = null,
    Object? slot = null,
    Object? ability = null,
  }) {
    return _then(_value.copyWith(
      isHidden: null == isHidden
          ? _value.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$_PokemonAbilityCopyWith<$Res>
    implements $PokemonAbilityCopyWith<$Res> {
  factory _$$_PokemonAbilityCopyWith(
          _$_PokemonAbility value, $Res Function(_$_PokemonAbility) then) =
      __$$_PokemonAbilityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is_hidden') bool isHidden,
      int slot,
      PokemonItem ability});

  @override
  $PokemonItemCopyWith<$Res> get ability;
}

/// @nodoc
class __$$_PokemonAbilityCopyWithImpl<$Res>
    extends _$PokemonAbilityCopyWithImpl<$Res, _$_PokemonAbility>
    implements _$$_PokemonAbilityCopyWith<$Res> {
  __$$_PokemonAbilityCopyWithImpl(
      _$_PokemonAbility _value, $Res Function(_$_PokemonAbility) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isHidden = null,
    Object? slot = null,
    Object? ability = null,
  }) {
    return _then(_$_PokemonAbility(
      isHidden: null == isHidden
          ? _value.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      ability: null == ability
          ? _value.ability
          : ability // ignore: cast_nullable_to_non_nullable
              as PokemonItem,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonAbility implements _PokemonAbility {
  const _$_PokemonAbility(
      {@JsonKey(name: 'is_hidden') required this.isHidden,
      required this.slot,
      required this.ability});

  factory _$_PokemonAbility.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonAbilityFromJson(json);

  @override
  @JsonKey(name: 'is_hidden')
  final bool isHidden;
  @override
  final int slot;
  @override
  final PokemonItem ability;

  @override
  String toString() {
    return 'PokemonAbility(isHidden: $isHidden, slot: $slot, ability: $ability)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonAbility &&
            (identical(other.isHidden, isHidden) ||
                other.isHidden == isHidden) &&
            (identical(other.slot, slot) || other.slot == slot) &&
            (identical(other.ability, ability) || other.ability == ability));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isHidden, slot, ability);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonAbilityCopyWith<_$_PokemonAbility> get copyWith =>
      __$$_PokemonAbilityCopyWithImpl<_$_PokemonAbility>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonAbilityToJson(
      this,
    );
  }
}

abstract class _PokemonAbility implements PokemonAbility {
  const factory _PokemonAbility(
      {@JsonKey(name: 'is_hidden') required final bool isHidden,
      required final int slot,
      required final PokemonItem ability}) = _$_PokemonAbility;

  factory _PokemonAbility.fromJson(Map<String, dynamic> json) =
      _$_PokemonAbility.fromJson;

  @override
  @JsonKey(name: 'is_hidden')
  bool get isHidden;
  @override
  int get slot;
  @override
  PokemonItem get ability;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonAbilityCopyWith<_$_PokemonAbility> get copyWith =>
      throw _privateConstructorUsedError;
}

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
  const _$_PokemonItem(
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
  const factory _PokemonItem(
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

VersionGameIndex _$VersionGameIndexFromJson(Map<String, dynamic> json) {
  return _VersionGameIndex.fromJson(json);
}

/// @nodoc
mixin _$VersionGameIndex {
  @JsonKey(name: 'game_index')
  int get gameIndex => throw _privateConstructorUsedError;
  PokemonItem get version => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VersionGameIndexCopyWith<VersionGameIndex> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VersionGameIndexCopyWith<$Res> {
  factory $VersionGameIndexCopyWith(
          VersionGameIndex value, $Res Function(VersionGameIndex) then) =
      _$VersionGameIndexCopyWithImpl<$Res, VersionGameIndex>;
  @useResult
  $Res call({@JsonKey(name: 'game_index') int gameIndex, PokemonItem version});

  $PokemonItemCopyWith<$Res> get version;
}

/// @nodoc
class _$VersionGameIndexCopyWithImpl<$Res, $Val extends VersionGameIndex>
    implements $VersionGameIndexCopyWith<$Res> {
  _$VersionGameIndexCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameIndex = null,
    Object? version = null,
  }) {
    return _then(_value.copyWith(
      gameIndex: null == gameIndex
          ? _value.gameIndex
          : gameIndex // ignore: cast_nullable_to_non_nullable
              as int,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as PokemonItem,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PokemonItemCopyWith<$Res> get version {
    return $PokemonItemCopyWith<$Res>(_value.version, (value) {
      return _then(_value.copyWith(version: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_VersionGameIndexCopyWith<$Res>
    implements $VersionGameIndexCopyWith<$Res> {
  factory _$$_VersionGameIndexCopyWith(
          _$_VersionGameIndex value, $Res Function(_$_VersionGameIndex) then) =
      __$$_VersionGameIndexCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'game_index') int gameIndex, PokemonItem version});

  @override
  $PokemonItemCopyWith<$Res> get version;
}

/// @nodoc
class __$$_VersionGameIndexCopyWithImpl<$Res>
    extends _$VersionGameIndexCopyWithImpl<$Res, _$_VersionGameIndex>
    implements _$$_VersionGameIndexCopyWith<$Res> {
  __$$_VersionGameIndexCopyWithImpl(
      _$_VersionGameIndex _value, $Res Function(_$_VersionGameIndex) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameIndex = null,
    Object? version = null,
  }) {
    return _then(_$_VersionGameIndex(
      gameIndex: null == gameIndex
          ? _value.gameIndex
          : gameIndex // ignore: cast_nullable_to_non_nullable
              as int,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as PokemonItem,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VersionGameIndex implements _VersionGameIndex {
  const _$_VersionGameIndex(
      {@JsonKey(name: 'game_index') required this.gameIndex,
      required this.version});

  factory _$_VersionGameIndex.fromJson(Map<String, dynamic> json) =>
      _$$_VersionGameIndexFromJson(json);

  @override
  @JsonKey(name: 'game_index')
  final int gameIndex;
  @override
  final PokemonItem version;

  @override
  String toString() {
    return 'VersionGameIndex(gameIndex: $gameIndex, version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VersionGameIndex &&
            (identical(other.gameIndex, gameIndex) ||
                other.gameIndex == gameIndex) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, gameIndex, version);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VersionGameIndexCopyWith<_$_VersionGameIndex> get copyWith =>
      __$$_VersionGameIndexCopyWithImpl<_$_VersionGameIndex>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VersionGameIndexToJson(
      this,
    );
  }
}

abstract class _VersionGameIndex implements VersionGameIndex {
  const factory _VersionGameIndex(
      {@JsonKey(name: 'game_index') required final int gameIndex,
      required final PokemonItem version}) = _$_VersionGameIndex;

  factory _VersionGameIndex.fromJson(Map<String, dynamic> json) =
      _$_VersionGameIndex.fromJson;

  @override
  @JsonKey(name: 'game_index')
  int get gameIndex;
  @override
  PokemonItem get version;
  @override
  @JsonKey(ignore: true)
  _$$_VersionGameIndexCopyWith<_$_VersionGameIndex> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonHeldItem _$PokemonHeldItemFromJson(Map<String, dynamic> json) {
  return _PokemonHeldItem.fromJson(json);
}

/// @nodoc
mixin _$PokemonHeldItem {
  PokemonItem get item => throw _privateConstructorUsedError;
  @JsonKey(name: 'version_details')
  List<VersionDetail> get versionDetails => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonHeldItemCopyWith<PokemonHeldItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonHeldItemCopyWith<$Res> {
  factory $PokemonHeldItemCopyWith(
          PokemonHeldItem value, $Res Function(PokemonHeldItem) then) =
      _$PokemonHeldItemCopyWithImpl<$Res, PokemonHeldItem>;
  @useResult
  $Res call(
      {PokemonItem item,
      @JsonKey(name: 'version_details') List<VersionDetail> versionDetails});

  $PokemonItemCopyWith<$Res> get item;
}

/// @nodoc
class _$PokemonHeldItemCopyWithImpl<$Res, $Val extends PokemonHeldItem>
    implements $PokemonHeldItemCopyWith<$Res> {
  _$PokemonHeldItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
    Object? versionDetails = null,
  }) {
    return _then(_value.copyWith(
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as PokemonItem,
      versionDetails: null == versionDetails
          ? _value.versionDetails
          : versionDetails // ignore: cast_nullable_to_non_nullable
              as List<VersionDetail>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PokemonItemCopyWith<$Res> get item {
    return $PokemonItemCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PokemonHeldItemCopyWith<$Res>
    implements $PokemonHeldItemCopyWith<$Res> {
  factory _$$_PokemonHeldItemCopyWith(
          _$_PokemonHeldItem value, $Res Function(_$_PokemonHeldItem) then) =
      __$$_PokemonHeldItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PokemonItem item,
      @JsonKey(name: 'version_details') List<VersionDetail> versionDetails});

  @override
  $PokemonItemCopyWith<$Res> get item;
}

/// @nodoc
class __$$_PokemonHeldItemCopyWithImpl<$Res>
    extends _$PokemonHeldItemCopyWithImpl<$Res, _$_PokemonHeldItem>
    implements _$$_PokemonHeldItemCopyWith<$Res> {
  __$$_PokemonHeldItemCopyWithImpl(
      _$_PokemonHeldItem _value, $Res Function(_$_PokemonHeldItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
    Object? versionDetails = null,
  }) {
    return _then(_$_PokemonHeldItem(
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as PokemonItem,
      versionDetails: null == versionDetails
          ? _value._versionDetails
          : versionDetails // ignore: cast_nullable_to_non_nullable
              as List<VersionDetail>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonHeldItem implements _PokemonHeldItem {
  const _$_PokemonHeldItem(
      {required this.item,
      @JsonKey(name: 'version_details')
      required final List<VersionDetail> versionDetails})
      : _versionDetails = versionDetails;

  factory _$_PokemonHeldItem.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonHeldItemFromJson(json);

  @override
  final PokemonItem item;
  final List<VersionDetail> _versionDetails;
  @override
  @JsonKey(name: 'version_details')
  List<VersionDetail> get versionDetails {
    if (_versionDetails is EqualUnmodifiableListView) return _versionDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_versionDetails);
  }

  @override
  String toString() {
    return 'PokemonHeldItem(item: $item, versionDetails: $versionDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonHeldItem &&
            (identical(other.item, item) || other.item == item) &&
            const DeepCollectionEquality()
                .equals(other._versionDetails, _versionDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, item, const DeepCollectionEquality().hash(_versionDetails));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonHeldItemCopyWith<_$_PokemonHeldItem> get copyWith =>
      __$$_PokemonHeldItemCopyWithImpl<_$_PokemonHeldItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonHeldItemToJson(
      this,
    );
  }
}

abstract class _PokemonHeldItem implements PokemonHeldItem {
  const factory _PokemonHeldItem(
      {required final PokemonItem item,
      @JsonKey(name: 'version_details')
      required final List<VersionDetail> versionDetails}) = _$_PokemonHeldItem;

  factory _PokemonHeldItem.fromJson(Map<String, dynamic> json) =
      _$_PokemonHeldItem.fromJson;

  @override
  PokemonItem get item;
  @override
  @JsonKey(name: 'version_details')
  List<VersionDetail> get versionDetails;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonHeldItemCopyWith<_$_PokemonHeldItem> get copyWith =>
      throw _privateConstructorUsedError;
}

VersionDetail _$VersionDetailFromJson(Map<String, dynamic> json) {
  return _VersionDetail.fromJson(json);
}

/// @nodoc
mixin _$VersionDetail {
  int get rarity => throw _privateConstructorUsedError;
  PokemonItem get version => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VersionDetailCopyWith<VersionDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VersionDetailCopyWith<$Res> {
  factory $VersionDetailCopyWith(
          VersionDetail value, $Res Function(VersionDetail) then) =
      _$VersionDetailCopyWithImpl<$Res, VersionDetail>;
  @useResult
  $Res call({int rarity, PokemonItem version});

  $PokemonItemCopyWith<$Res> get version;
}

/// @nodoc
class _$VersionDetailCopyWithImpl<$Res, $Val extends VersionDetail>
    implements $VersionDetailCopyWith<$Res> {
  _$VersionDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rarity = null,
    Object? version = null,
  }) {
    return _then(_value.copyWith(
      rarity: null == rarity
          ? _value.rarity
          : rarity // ignore: cast_nullable_to_non_nullable
              as int,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as PokemonItem,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PokemonItemCopyWith<$Res> get version {
    return $PokemonItemCopyWith<$Res>(_value.version, (value) {
      return _then(_value.copyWith(version: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_VersionDetailCopyWith<$Res>
    implements $VersionDetailCopyWith<$Res> {
  factory _$$_VersionDetailCopyWith(
          _$_VersionDetail value, $Res Function(_$_VersionDetail) then) =
      __$$_VersionDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int rarity, PokemonItem version});

  @override
  $PokemonItemCopyWith<$Res> get version;
}

/// @nodoc
class __$$_VersionDetailCopyWithImpl<$Res>
    extends _$VersionDetailCopyWithImpl<$Res, _$_VersionDetail>
    implements _$$_VersionDetailCopyWith<$Res> {
  __$$_VersionDetailCopyWithImpl(
      _$_VersionDetail _value, $Res Function(_$_VersionDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rarity = null,
    Object? version = null,
  }) {
    return _then(_$_VersionDetail(
      rarity: null == rarity
          ? _value.rarity
          : rarity // ignore: cast_nullable_to_non_nullable
              as int,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as PokemonItem,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VersionDetail implements _VersionDetail {
  const _$_VersionDetail({required this.rarity, required this.version});

  factory _$_VersionDetail.fromJson(Map<String, dynamic> json) =>
      _$$_VersionDetailFromJson(json);

  @override
  final int rarity;
  @override
  final PokemonItem version;

  @override
  String toString() {
    return 'VersionDetail(rarity: $rarity, version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VersionDetail &&
            (identical(other.rarity, rarity) || other.rarity == rarity) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, rarity, version);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VersionDetailCopyWith<_$_VersionDetail> get copyWith =>
      __$$_VersionDetailCopyWithImpl<_$_VersionDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VersionDetailToJson(
      this,
    );
  }
}

abstract class _VersionDetail implements VersionDetail {
  const factory _VersionDetail(
      {required final int rarity,
      required final PokemonItem version}) = _$_VersionDetail;

  factory _VersionDetail.fromJson(Map<String, dynamic> json) =
      _$_VersionDetail.fromJson;

  @override
  int get rarity;
  @override
  PokemonItem get version;
  @override
  @JsonKey(ignore: true)
  _$$_VersionDetailCopyWith<_$_VersionDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonMove _$PokemonMoveFromJson(Map<String, dynamic> json) {
  return _PokemonMove.fromJson(json);
}

/// @nodoc
mixin _$PokemonMove {
  PokemonItem get move => throw _privateConstructorUsedError;
  @JsonKey(name: 'version_group_details')
  List<MoveVersionGroupDetail> get versionGroupDetails =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonMoveCopyWith<PokemonMove> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonMoveCopyWith<$Res> {
  factory $PokemonMoveCopyWith(
          PokemonMove value, $Res Function(PokemonMove) then) =
      _$PokemonMoveCopyWithImpl<$Res, PokemonMove>;
  @useResult
  $Res call(
      {PokemonItem move,
      @JsonKey(name: 'version_group_details')
      List<MoveVersionGroupDetail> versionGroupDetails});

  $PokemonItemCopyWith<$Res> get move;
}

/// @nodoc
class _$PokemonMoveCopyWithImpl<$Res, $Val extends PokemonMove>
    implements $PokemonMoveCopyWith<$Res> {
  _$PokemonMoveCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? move = null,
    Object? versionGroupDetails = null,
  }) {
    return _then(_value.copyWith(
      move: null == move
          ? _value.move
          : move // ignore: cast_nullable_to_non_nullable
              as PokemonItem,
      versionGroupDetails: null == versionGroupDetails
          ? _value.versionGroupDetails
          : versionGroupDetails // ignore: cast_nullable_to_non_nullable
              as List<MoveVersionGroupDetail>,
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
abstract class _$$_PokemonMoveCopyWith<$Res>
    implements $PokemonMoveCopyWith<$Res> {
  factory _$$_PokemonMoveCopyWith(
          _$_PokemonMove value, $Res Function(_$_PokemonMove) then) =
      __$$_PokemonMoveCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PokemonItem move,
      @JsonKey(name: 'version_group_details')
      List<MoveVersionGroupDetail> versionGroupDetails});

  @override
  $PokemonItemCopyWith<$Res> get move;
}

/// @nodoc
class __$$_PokemonMoveCopyWithImpl<$Res>
    extends _$PokemonMoveCopyWithImpl<$Res, _$_PokemonMove>
    implements _$$_PokemonMoveCopyWith<$Res> {
  __$$_PokemonMoveCopyWithImpl(
      _$_PokemonMove _value, $Res Function(_$_PokemonMove) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? move = null,
    Object? versionGroupDetails = null,
  }) {
    return _then(_$_PokemonMove(
      move: null == move
          ? _value.move
          : move // ignore: cast_nullable_to_non_nullable
              as PokemonItem,
      versionGroupDetails: null == versionGroupDetails
          ? _value._versionGroupDetails
          : versionGroupDetails // ignore: cast_nullable_to_non_nullable
              as List<MoveVersionGroupDetail>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonMove implements _PokemonMove {
  const _$_PokemonMove(
      {required this.move,
      @JsonKey(name: 'version_group_details')
      required final List<MoveVersionGroupDetail> versionGroupDetails})
      : _versionGroupDetails = versionGroupDetails;

  factory _$_PokemonMove.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonMoveFromJson(json);

  @override
  final PokemonItem move;
  final List<MoveVersionGroupDetail> _versionGroupDetails;
  @override
  @JsonKey(name: 'version_group_details')
  List<MoveVersionGroupDetail> get versionGroupDetails {
    if (_versionGroupDetails is EqualUnmodifiableListView)
      return _versionGroupDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_versionGroupDetails);
  }

  @override
  String toString() {
    return 'PokemonMove(move: $move, versionGroupDetails: $versionGroupDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonMove &&
            (identical(other.move, move) || other.move == move) &&
            const DeepCollectionEquality()
                .equals(other._versionGroupDetails, _versionGroupDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, move,
      const DeepCollectionEquality().hash(_versionGroupDetails));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonMoveCopyWith<_$_PokemonMove> get copyWith =>
      __$$_PokemonMoveCopyWithImpl<_$_PokemonMove>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonMoveToJson(
      this,
    );
  }
}

abstract class _PokemonMove implements PokemonMove {
  const factory _PokemonMove(
          {required final PokemonItem move,
          @JsonKey(name: 'version_group_details')
          required final List<MoveVersionGroupDetail> versionGroupDetails}) =
      _$_PokemonMove;

  factory _PokemonMove.fromJson(Map<String, dynamic> json) =
      _$_PokemonMove.fromJson;

  @override
  PokemonItem get move;
  @override
  @JsonKey(name: 'version_group_details')
  List<MoveVersionGroupDetail> get versionGroupDetails;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonMoveCopyWith<_$_PokemonMove> get copyWith =>
      throw _privateConstructorUsedError;
}

MoveVersionGroupDetail _$MoveVersionGroupDetailFromJson(
    Map<String, dynamic> json) {
  return _MoveVersionGroupDetail.fromJson(json);
}

/// @nodoc
mixin _$MoveVersionGroupDetail {
  @JsonKey(name: 'level_learned_at')
  int get levelLearnedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'version_group')
  PokemonItem get versionGroup => throw _privateConstructorUsedError;
  @JsonKey(name: 'move_learn_method')
  PokemonItem get moveLearnMethod => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoveVersionGroupDetailCopyWith<MoveVersionGroupDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoveVersionGroupDetailCopyWith<$Res> {
  factory $MoveVersionGroupDetailCopyWith(MoveVersionGroupDetail value,
          $Res Function(MoveVersionGroupDetail) then) =
      _$MoveVersionGroupDetailCopyWithImpl<$Res, MoveVersionGroupDetail>;
  @useResult
  $Res call(
      {@JsonKey(name: 'level_learned_at') int levelLearnedAt,
      @JsonKey(name: 'version_group') PokemonItem versionGroup,
      @JsonKey(name: 'move_learn_method') PokemonItem moveLearnMethod});

  $PokemonItemCopyWith<$Res> get versionGroup;
  $PokemonItemCopyWith<$Res> get moveLearnMethod;
}

/// @nodoc
class _$MoveVersionGroupDetailCopyWithImpl<$Res,
        $Val extends MoveVersionGroupDetail>
    implements $MoveVersionGroupDetailCopyWith<$Res> {
  _$MoveVersionGroupDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? levelLearnedAt = null,
    Object? versionGroup = null,
    Object? moveLearnMethod = null,
  }) {
    return _then(_value.copyWith(
      levelLearnedAt: null == levelLearnedAt
          ? _value.levelLearnedAt
          : levelLearnedAt // ignore: cast_nullable_to_non_nullable
              as int,
      versionGroup: null == versionGroup
          ? _value.versionGroup
          : versionGroup // ignore: cast_nullable_to_non_nullable
              as PokemonItem,
      moveLearnMethod: null == moveLearnMethod
          ? _value.moveLearnMethod
          : moveLearnMethod // ignore: cast_nullable_to_non_nullable
              as PokemonItem,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PokemonItemCopyWith<$Res> get versionGroup {
    return $PokemonItemCopyWith<$Res>(_value.versionGroup, (value) {
      return _then(_value.copyWith(versionGroup: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PokemonItemCopyWith<$Res> get moveLearnMethod {
    return $PokemonItemCopyWith<$Res>(_value.moveLearnMethod, (value) {
      return _then(_value.copyWith(moveLearnMethod: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MoveVersionGroupDetailCopyWith<$Res>
    implements $MoveVersionGroupDetailCopyWith<$Res> {
  factory _$$_MoveVersionGroupDetailCopyWith(_$_MoveVersionGroupDetail value,
          $Res Function(_$_MoveVersionGroupDetail) then) =
      __$$_MoveVersionGroupDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'level_learned_at') int levelLearnedAt,
      @JsonKey(name: 'version_group') PokemonItem versionGroup,
      @JsonKey(name: 'move_learn_method') PokemonItem moveLearnMethod});

  @override
  $PokemonItemCopyWith<$Res> get versionGroup;
  @override
  $PokemonItemCopyWith<$Res> get moveLearnMethod;
}

/// @nodoc
class __$$_MoveVersionGroupDetailCopyWithImpl<$Res>
    extends _$MoveVersionGroupDetailCopyWithImpl<$Res,
        _$_MoveVersionGroupDetail>
    implements _$$_MoveVersionGroupDetailCopyWith<$Res> {
  __$$_MoveVersionGroupDetailCopyWithImpl(_$_MoveVersionGroupDetail _value,
      $Res Function(_$_MoveVersionGroupDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? levelLearnedAt = null,
    Object? versionGroup = null,
    Object? moveLearnMethod = null,
  }) {
    return _then(_$_MoveVersionGroupDetail(
      levelLearnedAt: null == levelLearnedAt
          ? _value.levelLearnedAt
          : levelLearnedAt // ignore: cast_nullable_to_non_nullable
              as int,
      versionGroup: null == versionGroup
          ? _value.versionGroup
          : versionGroup // ignore: cast_nullable_to_non_nullable
              as PokemonItem,
      moveLearnMethod: null == moveLearnMethod
          ? _value.moveLearnMethod
          : moveLearnMethod // ignore: cast_nullable_to_non_nullable
              as PokemonItem,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MoveVersionGroupDetail implements _MoveVersionGroupDetail {
  const _$_MoveVersionGroupDetail(
      {@JsonKey(name: 'level_learned_at') required this.levelLearnedAt,
      @JsonKey(name: 'version_group') required this.versionGroup,
      @JsonKey(name: 'move_learn_method') required this.moveLearnMethod});

  factory _$_MoveVersionGroupDetail.fromJson(Map<String, dynamic> json) =>
      _$$_MoveVersionGroupDetailFromJson(json);

  @override
  @JsonKey(name: 'level_learned_at')
  final int levelLearnedAt;
  @override
  @JsonKey(name: 'version_group')
  final PokemonItem versionGroup;
  @override
  @JsonKey(name: 'move_learn_method')
  final PokemonItem moveLearnMethod;

  @override
  String toString() {
    return 'MoveVersionGroupDetail(levelLearnedAt: $levelLearnedAt, versionGroup: $versionGroup, moveLearnMethod: $moveLearnMethod)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MoveVersionGroupDetail &&
            (identical(other.levelLearnedAt, levelLearnedAt) ||
                other.levelLearnedAt == levelLearnedAt) &&
            (identical(other.versionGroup, versionGroup) ||
                other.versionGroup == versionGroup) &&
            (identical(other.moveLearnMethod, moveLearnMethod) ||
                other.moveLearnMethod == moveLearnMethod));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, levelLearnedAt, versionGroup, moveLearnMethod);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MoveVersionGroupDetailCopyWith<_$_MoveVersionGroupDetail> get copyWith =>
      __$$_MoveVersionGroupDetailCopyWithImpl<_$_MoveVersionGroupDetail>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MoveVersionGroupDetailToJson(
      this,
    );
  }
}

abstract class _MoveVersionGroupDetail implements MoveVersionGroupDetail {
  const factory _MoveVersionGroupDetail(
      {@JsonKey(name: 'level_learned_at') required final int levelLearnedAt,
      @JsonKey(name: 'version_group') required final PokemonItem versionGroup,
      @JsonKey(name: 'move_learn_method')
      required final PokemonItem moveLearnMethod}) = _$_MoveVersionGroupDetail;

  factory _MoveVersionGroupDetail.fromJson(Map<String, dynamic> json) =
      _$_MoveVersionGroupDetail.fromJson;

  @override
  @JsonKey(name: 'level_learned_at')
  int get levelLearnedAt;
  @override
  @JsonKey(name: 'version_group')
  PokemonItem get versionGroup;
  @override
  @JsonKey(name: 'move_learn_method')
  PokemonItem get moveLearnMethod;
  @override
  @JsonKey(ignore: true)
  _$$_MoveVersionGroupDetailCopyWith<_$_MoveVersionGroupDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonTypePast _$PokemonTypePastFromJson(Map<String, dynamic> json) {
  return _PokemonTypePast.fromJson(json);
}

/// @nodoc
mixin _$PokemonTypePast {
  PokemonItem get generation => throw _privateConstructorUsedError;
  List<PokemonType> get types => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonTypePastCopyWith<PokemonTypePast> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonTypePastCopyWith<$Res> {
  factory $PokemonTypePastCopyWith(
          PokemonTypePast value, $Res Function(PokemonTypePast) then) =
      _$PokemonTypePastCopyWithImpl<$Res, PokemonTypePast>;
  @useResult
  $Res call({PokemonItem generation, List<PokemonType> types});

  $PokemonItemCopyWith<$Res> get generation;
}

/// @nodoc
class _$PokemonTypePastCopyWithImpl<$Res, $Val extends PokemonTypePast>
    implements $PokemonTypePastCopyWith<$Res> {
  _$PokemonTypePastCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? generation = null,
    Object? types = null,
  }) {
    return _then(_value.copyWith(
      generation: null == generation
          ? _value.generation
          : generation // ignore: cast_nullable_to_non_nullable
              as PokemonItem,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<PokemonType>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PokemonItemCopyWith<$Res> get generation {
    return $PokemonItemCopyWith<$Res>(_value.generation, (value) {
      return _then(_value.copyWith(generation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PokemonTypePastCopyWith<$Res>
    implements $PokemonTypePastCopyWith<$Res> {
  factory _$$_PokemonTypePastCopyWith(
          _$_PokemonTypePast value, $Res Function(_$_PokemonTypePast) then) =
      __$$_PokemonTypePastCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PokemonItem generation, List<PokemonType> types});

  @override
  $PokemonItemCopyWith<$Res> get generation;
}

/// @nodoc
class __$$_PokemonTypePastCopyWithImpl<$Res>
    extends _$PokemonTypePastCopyWithImpl<$Res, _$_PokemonTypePast>
    implements _$$_PokemonTypePastCopyWith<$Res> {
  __$$_PokemonTypePastCopyWithImpl(
      _$_PokemonTypePast _value, $Res Function(_$_PokemonTypePast) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? generation = null,
    Object? types = null,
  }) {
    return _then(_$_PokemonTypePast(
      generation: null == generation
          ? _value.generation
          : generation // ignore: cast_nullable_to_non_nullable
              as PokemonItem,
      types: null == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<PokemonType>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonTypePast implements _PokemonTypePast {
  const _$_PokemonTypePast(
      {required this.generation, required final List<PokemonType> types})
      : _types = types;

  factory _$_PokemonTypePast.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonTypePastFromJson(json);

  @override
  final PokemonItem generation;
  final List<PokemonType> _types;
  @override
  List<PokemonType> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  @override
  String toString() {
    return 'PokemonTypePast(generation: $generation, types: $types)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonTypePast &&
            (identical(other.generation, generation) ||
                other.generation == generation) &&
            const DeepCollectionEquality().equals(other._types, _types));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, generation, const DeepCollectionEquality().hash(_types));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonTypePastCopyWith<_$_PokemonTypePast> get copyWith =>
      __$$_PokemonTypePastCopyWithImpl<_$_PokemonTypePast>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonTypePastToJson(
      this,
    );
  }
}

abstract class _PokemonTypePast implements PokemonTypePast {
  const factory _PokemonTypePast(
      {required final PokemonItem generation,
      required final List<PokemonType> types}) = _$_PokemonTypePast;

  factory _PokemonTypePast.fromJson(Map<String, dynamic> json) =
      _$_PokemonTypePast.fromJson;

  @override
  PokemonItem get generation;
  @override
  List<PokemonType> get types;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonTypePastCopyWith<_$_PokemonTypePast> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonSprites _$PokemonSpritesFromJson(Map<String, dynamic> json) {
  return _PokemonSprites.fromJson(json);
}

/// @nodoc
mixin _$PokemonSprites {
  @JsonKey(name: 'front_default')
  String get frontDefault => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonSpritesCopyWith<PokemonSprites> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonSpritesCopyWith<$Res> {
  factory $PokemonSpritesCopyWith(
          PokemonSprites value, $Res Function(PokemonSprites) then) =
      _$PokemonSpritesCopyWithImpl<$Res, PokemonSprites>;
  @useResult
  $Res call({@JsonKey(name: 'front_default') String frontDefault});
}

/// @nodoc
class _$PokemonSpritesCopyWithImpl<$Res, $Val extends PokemonSprites>
    implements $PokemonSpritesCopyWith<$Res> {
  _$PokemonSpritesCopyWithImpl(this._value, this._then);

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
abstract class _$$_PokemonSpritesCopyWith<$Res>
    implements $PokemonSpritesCopyWith<$Res> {
  factory _$$_PokemonSpritesCopyWith(
          _$_PokemonSprites value, $Res Function(_$_PokemonSprites) then) =
      __$$_PokemonSpritesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'front_default') String frontDefault});
}

/// @nodoc
class __$$_PokemonSpritesCopyWithImpl<$Res>
    extends _$PokemonSpritesCopyWithImpl<$Res, _$_PokemonSprites>
    implements _$$_PokemonSpritesCopyWith<$Res> {
  __$$_PokemonSpritesCopyWithImpl(
      _$_PokemonSprites _value, $Res Function(_$_PokemonSprites) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = null,
  }) {
    return _then(_$_PokemonSprites(
      frontDefault: null == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonSprites implements _PokemonSprites {
  const _$_PokemonSprites(
      {@JsonKey(name: 'front_default') required this.frontDefault});

  factory _$_PokemonSprites.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonSpritesFromJson(json);

  @override
  @JsonKey(name: 'front_default')
  final String frontDefault;

  @override
  String toString() {
    return 'PokemonSprites(frontDefault: $frontDefault)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonSprites &&
            (identical(other.frontDefault, frontDefault) ||
                other.frontDefault == frontDefault));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, frontDefault);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonSpritesCopyWith<_$_PokemonSprites> get copyWith =>
      __$$_PokemonSpritesCopyWithImpl<_$_PokemonSprites>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonSpritesToJson(
      this,
    );
  }
}

abstract class _PokemonSprites implements PokemonSprites {
  const factory _PokemonSprites(
      {@JsonKey(name: 'front_default')
      required final String frontDefault}) = _$_PokemonSprites;

  factory _PokemonSprites.fromJson(Map<String, dynamic> json) =
      _$_PokemonSprites.fromJson;

  @override
  @JsonKey(name: 'front_default')
  String get frontDefault;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonSpritesCopyWith<_$_PokemonSprites> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonStat _$PokemonStatFromJson(Map<String, dynamic> json) {
  return _PokemonStat.fromJson(json);
}

/// @nodoc
mixin _$PokemonStat {
  @JsonKey(name: 'base_stat')
  int get baseStat => throw _privateConstructorUsedError;
  int get effort => throw _privateConstructorUsedError;
  PokemonItem get stat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonStatCopyWith<PokemonStat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonStatCopyWith<$Res> {
  factory $PokemonStatCopyWith(
          PokemonStat value, $Res Function(PokemonStat) then) =
      _$PokemonStatCopyWithImpl<$Res, PokemonStat>;
  @useResult
  $Res call(
      {@JsonKey(name: 'base_stat') int baseStat, int effort, PokemonItem stat});

  $PokemonItemCopyWith<$Res> get stat;
}

/// @nodoc
class _$PokemonStatCopyWithImpl<$Res, $Val extends PokemonStat>
    implements $PokemonStatCopyWith<$Res> {
  _$PokemonStatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseStat = null,
    Object? effort = null,
    Object? stat = null,
  }) {
    return _then(_value.copyWith(
      baseStat: null == baseStat
          ? _value.baseStat
          : baseStat // ignore: cast_nullable_to_non_nullable
              as int,
      effort: null == effort
          ? _value.effort
          : effort // ignore: cast_nullable_to_non_nullable
              as int,
      stat: null == stat
          ? _value.stat
          : stat // ignore: cast_nullable_to_non_nullable
              as PokemonItem,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PokemonItemCopyWith<$Res> get stat {
    return $PokemonItemCopyWith<$Res>(_value.stat, (value) {
      return _then(_value.copyWith(stat: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PokemonStatCopyWith<$Res>
    implements $PokemonStatCopyWith<$Res> {
  factory _$$_PokemonStatCopyWith(
          _$_PokemonStat value, $Res Function(_$_PokemonStat) then) =
      __$$_PokemonStatCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'base_stat') int baseStat, int effort, PokemonItem stat});

  @override
  $PokemonItemCopyWith<$Res> get stat;
}

/// @nodoc
class __$$_PokemonStatCopyWithImpl<$Res>
    extends _$PokemonStatCopyWithImpl<$Res, _$_PokemonStat>
    implements _$$_PokemonStatCopyWith<$Res> {
  __$$_PokemonStatCopyWithImpl(
      _$_PokemonStat _value, $Res Function(_$_PokemonStat) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseStat = null,
    Object? effort = null,
    Object? stat = null,
  }) {
    return _then(_$_PokemonStat(
      baseStat: null == baseStat
          ? _value.baseStat
          : baseStat // ignore: cast_nullable_to_non_nullable
              as int,
      effort: null == effort
          ? _value.effort
          : effort // ignore: cast_nullable_to_non_nullable
              as int,
      stat: null == stat
          ? _value.stat
          : stat // ignore: cast_nullable_to_non_nullable
              as PokemonItem,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonStat implements _PokemonStat {
  const _$_PokemonStat(
      {@JsonKey(name: 'base_stat') required this.baseStat,
      required this.effort,
      required this.stat});

  factory _$_PokemonStat.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonStatFromJson(json);

  @override
  @JsonKey(name: 'base_stat')
  final int baseStat;
  @override
  final int effort;
  @override
  final PokemonItem stat;

  @override
  String toString() {
    return 'PokemonStat(baseStat: $baseStat, effort: $effort, stat: $stat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonStat &&
            (identical(other.baseStat, baseStat) ||
                other.baseStat == baseStat) &&
            (identical(other.effort, effort) || other.effort == effort) &&
            (identical(other.stat, stat) || other.stat == stat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, baseStat, effort, stat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonStatCopyWith<_$_PokemonStat> get copyWith =>
      __$$_PokemonStatCopyWithImpl<_$_PokemonStat>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonStatToJson(
      this,
    );
  }
}

abstract class _PokemonStat implements PokemonStat {
  const factory _PokemonStat(
      {@JsonKey(name: 'base_stat') required final int baseStat,
      required final int effort,
      required final PokemonItem stat}) = _$_PokemonStat;

  factory _PokemonStat.fromJson(Map<String, dynamic> json) =
      _$_PokemonStat.fromJson;

  @override
  @JsonKey(name: 'base_stat')
  int get baseStat;
  @override
  int get effort;
  @override
  PokemonItem get stat;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonStatCopyWith<_$_PokemonStat> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonType _$PokemonTypeFromJson(Map<String, dynamic> json) {
  return _PokemonType.fromJson(json);
}

/// @nodoc
mixin _$PokemonType {
  int get slot => throw _privateConstructorUsedError;
  PokemonItem get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonTypeCopyWith<PokemonType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonTypeCopyWith<$Res> {
  factory $PokemonTypeCopyWith(
          PokemonType value, $Res Function(PokemonType) then) =
      _$PokemonTypeCopyWithImpl<$Res, PokemonType>;
  @useResult
  $Res call({int slot, PokemonItem type});

  $PokemonItemCopyWith<$Res> get type;
}

/// @nodoc
class _$PokemonTypeCopyWithImpl<$Res, $Val extends PokemonType>
    implements $PokemonTypeCopyWith<$Res> {
  _$PokemonTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PokemonItem,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PokemonItemCopyWith<$Res> get type {
    return $PokemonItemCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PokemonTypeCopyWith<$Res>
    implements $PokemonTypeCopyWith<$Res> {
  factory _$$_PokemonTypeCopyWith(
          _$_PokemonType value, $Res Function(_$_PokemonType) then) =
      __$$_PokemonTypeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int slot, PokemonItem type});

  @override
  $PokemonItemCopyWith<$Res> get type;
}

/// @nodoc
class __$$_PokemonTypeCopyWithImpl<$Res>
    extends _$PokemonTypeCopyWithImpl<$Res, _$_PokemonType>
    implements _$$_PokemonTypeCopyWith<$Res> {
  __$$_PokemonTypeCopyWithImpl(
      _$_PokemonType _value, $Res Function(_$_PokemonType) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = null,
    Object? type = null,
  }) {
    return _then(_$_PokemonType(
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PokemonItem,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonType implements _PokemonType {
  const _$_PokemonType({required this.slot, required this.type});

  factory _$_PokemonType.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonTypeFromJson(json);

  @override
  final int slot;
  @override
  final PokemonItem type;

  @override
  String toString() {
    return 'PokemonType(slot: $slot, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonType &&
            (identical(other.slot, slot) || other.slot == slot) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, slot, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonTypeCopyWith<_$_PokemonType> get copyWith =>
      __$$_PokemonTypeCopyWithImpl<_$_PokemonType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonTypeToJson(
      this,
    );
  }
}

abstract class _PokemonType implements PokemonType {
  const factory _PokemonType(
      {required final int slot,
      required final PokemonItem type}) = _$_PokemonType;

  factory _PokemonType.fromJson(Map<String, dynamic> json) =
      _$_PokemonType.fromJson;

  @override
  int get slot;
  @override
  PokemonItem get type;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonTypeCopyWith<_$_PokemonType> get copyWith =>
      throw _privateConstructorUsedError;
}
