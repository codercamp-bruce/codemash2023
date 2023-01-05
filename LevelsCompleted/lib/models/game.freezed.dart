// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Game _$GameFromJson(Map<String, dynamic> json) {
  return _Game.fromJson(json);
}

/// @nodoc
mixin _$Game {
  @HiveField(0)
  String? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get name => throw _privateConstructorUsedError;
  bool get inCollection => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(name: 'min_players')
  int? get minPlayers => throw _privateConstructorUsedError;
  @HiveField(5)
  @JsonKey(name: 'max_players')
  int? get maxPlayers => throw _privateConstructorUsedError;
  @HiveField(6)
  @JsonKey(name: 'min_playtime')
  int? get minPlaytime => throw _privateConstructorUsedError;
  @HiveField(7)
  @JsonKey(name: 'max_playtime')
  int? get maxPlaytime => throw _privateConstructorUsedError;
  @HiveField(8)
  @JsonKey(name: 'min_age')
  int? get minAge => throw _privateConstructorUsedError;
  @HiveField(9)
  String? get description => throw _privateConstructorUsedError;
  @HiveField(10)
  @JsonKey(name: 'image_url')
  String? get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameCopyWith<Game> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameCopyWith<$Res> {
  factory $GameCopyWith(Game value, $Res Function(Game) then) =
      _$GameCopyWithImpl<$Res, Game>;
  @useResult
  $Res call(
      {@HiveField(0) String? id,
      @HiveField(1) String? name,
      bool inCollection,
      @HiveField(4) @JsonKey(name: 'min_players') int? minPlayers,
      @HiveField(5) @JsonKey(name: 'max_players') int? maxPlayers,
      @HiveField(6) @JsonKey(name: 'min_playtime') int? minPlaytime,
      @HiveField(7) @JsonKey(name: 'max_playtime') int? maxPlaytime,
      @HiveField(8) @JsonKey(name: 'min_age') int? minAge,
      @HiveField(9) String? description,
      @HiveField(10) @JsonKey(name: 'image_url') String? imageUrl});
}

/// @nodoc
class _$GameCopyWithImpl<$Res, $Val extends Game>
    implements $GameCopyWith<$Res> {
  _$GameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? inCollection = null,
    Object? minPlayers = freezed,
    Object? maxPlayers = freezed,
    Object? minPlaytime = freezed,
    Object? maxPlaytime = freezed,
    Object? minAge = freezed,
    Object? description = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      inCollection: null == inCollection
          ? _value.inCollection
          : inCollection // ignore: cast_nullable_to_non_nullable
              as bool,
      minPlayers: freezed == minPlayers
          ? _value.minPlayers
          : minPlayers // ignore: cast_nullable_to_non_nullable
              as int?,
      maxPlayers: freezed == maxPlayers
          ? _value.maxPlayers
          : maxPlayers // ignore: cast_nullable_to_non_nullable
              as int?,
      minPlaytime: freezed == minPlaytime
          ? _value.minPlaytime
          : minPlaytime // ignore: cast_nullable_to_non_nullable
              as int?,
      maxPlaytime: freezed == maxPlaytime
          ? _value.maxPlaytime
          : maxPlaytime // ignore: cast_nullable_to_non_nullable
              as int?,
      minAge: freezed == minAge
          ? _value.minAge
          : minAge // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GameCopyWith<$Res> implements $GameCopyWith<$Res> {
  factory _$$_GameCopyWith(_$_Game value, $Res Function(_$_Game) then) =
      __$$_GameCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String? id,
      @HiveField(1) String? name,
      bool inCollection,
      @HiveField(4) @JsonKey(name: 'min_players') int? minPlayers,
      @HiveField(5) @JsonKey(name: 'max_players') int? maxPlayers,
      @HiveField(6) @JsonKey(name: 'min_playtime') int? minPlaytime,
      @HiveField(7) @JsonKey(name: 'max_playtime') int? maxPlaytime,
      @HiveField(8) @JsonKey(name: 'min_age') int? minAge,
      @HiveField(9) String? description,
      @HiveField(10) @JsonKey(name: 'image_url') String? imageUrl});
}

/// @nodoc
class __$$_GameCopyWithImpl<$Res> extends _$GameCopyWithImpl<$Res, _$_Game>
    implements _$$_GameCopyWith<$Res> {
  __$$_GameCopyWithImpl(_$_Game _value, $Res Function(_$_Game) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? inCollection = null,
    Object? minPlayers = freezed,
    Object? maxPlayers = freezed,
    Object? minPlaytime = freezed,
    Object? maxPlaytime = freezed,
    Object? minAge = freezed,
    Object? description = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_$_Game(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      inCollection: null == inCollection
          ? _value.inCollection
          : inCollection // ignore: cast_nullable_to_non_nullable
              as bool,
      minPlayers: freezed == minPlayers
          ? _value.minPlayers
          : minPlayers // ignore: cast_nullable_to_non_nullable
              as int?,
      maxPlayers: freezed == maxPlayers
          ? _value.maxPlayers
          : maxPlayers // ignore: cast_nullable_to_non_nullable
              as int?,
      minPlaytime: freezed == minPlaytime
          ? _value.minPlaytime
          : minPlaytime // ignore: cast_nullable_to_non_nullable
              as int?,
      maxPlaytime: freezed == maxPlaytime
          ? _value.maxPlaytime
          : maxPlaytime // ignore: cast_nullable_to_non_nullable
              as int?,
      minAge: freezed == minAge
          ? _value.minAge
          : minAge // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 1)
class _$_Game extends _Game {
  _$_Game(
      {@HiveField(0) this.id,
      @HiveField(1) this.name,
      this.inCollection = false,
      @HiveField(4) @JsonKey(name: 'min_players') this.minPlayers,
      @HiveField(5) @JsonKey(name: 'max_players') this.maxPlayers,
      @HiveField(6) @JsonKey(name: 'min_playtime') this.minPlaytime,
      @HiveField(7) @JsonKey(name: 'max_playtime') this.maxPlaytime,
      @HiveField(8) @JsonKey(name: 'min_age') this.minAge,
      @HiveField(9) this.description,
      @HiveField(10) @JsonKey(name: 'image_url') this.imageUrl})
      : super._();

  factory _$_Game.fromJson(Map<String, dynamic> json) => _$$_GameFromJson(json);

  @override
  @HiveField(0)
  final String? id;
  @override
  @HiveField(1)
  final String? name;
  @override
  @JsonKey()
  final bool inCollection;
  @override
  @HiveField(4)
  @JsonKey(name: 'min_players')
  final int? minPlayers;
  @override
  @HiveField(5)
  @JsonKey(name: 'max_players')
  final int? maxPlayers;
  @override
  @HiveField(6)
  @JsonKey(name: 'min_playtime')
  final int? minPlaytime;
  @override
  @HiveField(7)
  @JsonKey(name: 'max_playtime')
  final int? maxPlaytime;
  @override
  @HiveField(8)
  @JsonKey(name: 'min_age')
  final int? minAge;
  @override
  @HiveField(9)
  final String? description;
  @override
  @HiveField(10)
  @JsonKey(name: 'image_url')
  final String? imageUrl;

  @override
  String toString() {
    return 'Game(id: $id, name: $name, inCollection: $inCollection, minPlayers: $minPlayers, maxPlayers: $maxPlayers, minPlaytime: $minPlaytime, maxPlaytime: $maxPlaytime, minAge: $minAge, description: $description, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Game &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.inCollection, inCollection) ||
                other.inCollection == inCollection) &&
            (identical(other.minPlayers, minPlayers) ||
                other.minPlayers == minPlayers) &&
            (identical(other.maxPlayers, maxPlayers) ||
                other.maxPlayers == maxPlayers) &&
            (identical(other.minPlaytime, minPlaytime) ||
                other.minPlaytime == minPlaytime) &&
            (identical(other.maxPlaytime, maxPlaytime) ||
                other.maxPlaytime == maxPlaytime) &&
            (identical(other.minAge, minAge) || other.minAge == minAge) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      inCollection,
      minPlayers,
      maxPlayers,
      minPlaytime,
      maxPlaytime,
      minAge,
      description,
      imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GameCopyWith<_$_Game> get copyWith =>
      __$$_GameCopyWithImpl<_$_Game>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GameToJson(
      this,
    );
  }
}

abstract class _Game extends Game {
  factory _Game(
          {@HiveField(0) final String? id,
          @HiveField(1) final String? name,
          final bool inCollection,
          @HiveField(4) @JsonKey(name: 'min_players') final int? minPlayers,
          @HiveField(5) @JsonKey(name: 'max_players') final int? maxPlayers,
          @HiveField(6) @JsonKey(name: 'min_playtime') final int? minPlaytime,
          @HiveField(7) @JsonKey(name: 'max_playtime') final int? maxPlaytime,
          @HiveField(8) @JsonKey(name: 'min_age') final int? minAge,
          @HiveField(9) final String? description,
          @HiveField(10) @JsonKey(name: 'image_url') final String? imageUrl}) =
      _$_Game;
  _Game._() : super._();

  factory _Game.fromJson(Map<String, dynamic> json) = _$_Game.fromJson;

  @override
  @HiveField(0)
  String? get id;
  @override
  @HiveField(1)
  String? get name;
  @override
  bool get inCollection;
  @override
  @HiveField(4)
  @JsonKey(name: 'min_players')
  int? get minPlayers;
  @override
  @HiveField(5)
  @JsonKey(name: 'max_players')
  int? get maxPlayers;
  @override
  @HiveField(6)
  @JsonKey(name: 'min_playtime')
  int? get minPlaytime;
  @override
  @HiveField(7)
  @JsonKey(name: 'max_playtime')
  int? get maxPlaytime;
  @override
  @HiveField(8)
  @JsonKey(name: 'min_age')
  int? get minAge;
  @override
  @HiveField(9)
  String? get description;
  @override
  @HiveField(10)
  @JsonKey(name: 'image_url')
  String? get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_GameCopyWith<_$_Game> get copyWith => throw _privateConstructorUsedError;
}
