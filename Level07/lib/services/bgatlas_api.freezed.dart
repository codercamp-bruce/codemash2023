// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bgatlas_api.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BGAGameSearchResponse _$BGAGameSearchResponseFromJson(
    Map<String, dynamic> json) {
  return _BGAGameSearchResponse.fromJson(json);
}

/// @nodoc
mixin _$BGAGameSearchResponse {
  List<Game>? get games => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BGAGameSearchResponseCopyWith<BGAGameSearchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BGAGameSearchResponseCopyWith<$Res> {
  factory $BGAGameSearchResponseCopyWith(BGAGameSearchResponse value,
          $Res Function(BGAGameSearchResponse) then) =
      _$BGAGameSearchResponseCopyWithImpl<$Res, BGAGameSearchResponse>;
  @useResult
  $Res call({List<Game>? games, int? count});
}

/// @nodoc
class _$BGAGameSearchResponseCopyWithImpl<$Res,
        $Val extends BGAGameSearchResponse>
    implements $BGAGameSearchResponseCopyWith<$Res> {
  _$BGAGameSearchResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? games = freezed,
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      games: freezed == games
          ? _value.games
          : games // ignore: cast_nullable_to_non_nullable
              as List<Game>?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BGAGameSearchResponseCopyWith<$Res>
    implements $BGAGameSearchResponseCopyWith<$Res> {
  factory _$$_BGAGameSearchResponseCopyWith(_$_BGAGameSearchResponse value,
          $Res Function(_$_BGAGameSearchResponse) then) =
      __$$_BGAGameSearchResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Game>? games, int? count});
}

/// @nodoc
class __$$_BGAGameSearchResponseCopyWithImpl<$Res>
    extends _$BGAGameSearchResponseCopyWithImpl<$Res, _$_BGAGameSearchResponse>
    implements _$$_BGAGameSearchResponseCopyWith<$Res> {
  __$$_BGAGameSearchResponseCopyWithImpl(_$_BGAGameSearchResponse _value,
      $Res Function(_$_BGAGameSearchResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? games = freezed,
    Object? count = freezed,
  }) {
    return _then(_$_BGAGameSearchResponse(
      games: freezed == games
          ? _value._games
          : games // ignore: cast_nullable_to_non_nullable
              as List<Game>?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BGAGameSearchResponse
    with DiagnosticableTreeMixin
    implements _BGAGameSearchResponse {
  _$_BGAGameSearchResponse({final List<Game>? games, this.count})
      : _games = games;

  factory _$_BGAGameSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$$_BGAGameSearchResponseFromJson(json);

  final List<Game>? _games;
  @override
  List<Game>? get games {
    final value = _games;
    if (value == null) return null;
    if (_games is EqualUnmodifiableListView) return _games;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? count;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BGAGameSearchResponse(games: $games, count: $count)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BGAGameSearchResponse'))
      ..add(DiagnosticsProperty('games', games))
      ..add(DiagnosticsProperty('count', count));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BGAGameSearchResponse &&
            const DeepCollectionEquality().equals(other._games, _games) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_games), count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BGAGameSearchResponseCopyWith<_$_BGAGameSearchResponse> get copyWith =>
      __$$_BGAGameSearchResponseCopyWithImpl<_$_BGAGameSearchResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BGAGameSearchResponseToJson(
      this,
    );
  }
}

abstract class _BGAGameSearchResponse implements BGAGameSearchResponse {
  factory _BGAGameSearchResponse({final List<Game>? games, final int? count}) =
      _$_BGAGameSearchResponse;

  factory _BGAGameSearchResponse.fromJson(Map<String, dynamic> json) =
      _$_BGAGameSearchResponse.fromJson;

  @override
  List<Game>? get games;
  @override
  int? get count;
  @override
  @JsonKey(ignore: true)
  _$$_BGAGameSearchResponseCopyWith<_$_BGAGameSearchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
