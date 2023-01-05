import 'package:cm23mp/app/cors_image_helper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'game.freezed.dart';
part 'game.g.dart';

@freezed
class Game with _$Game {
  @HiveType(typeId: 1)
  factory Game({
    @HiveField(0) String? id,
    @HiveField(1) String? name,
    @Default(false) bool inCollection,
    @HiveField(4) @JsonKey(name: 'min_players') int? minPlayers,
    @HiveField(5) @JsonKey(name: 'max_players') int? maxPlayers,
    @HiveField(6) @JsonKey(name: 'min_playtime') int? minPlaytime,
    @HiveField(7) @JsonKey(name: 'max_playtime') int? maxPlaytime,
    @HiveField(8) @JsonKey(name: 'min_age') int? minAge,
    @HiveField(9) String? description,
    @HiveField(10) @JsonKey(name: 'image_url') String? imageUrl,
  }) = _Game;
  factory Game.fromJson(Map<String, dynamic> json) => _$GameFromJson(json);
  const Game._();

  String? get corsImageUrl =>
      imageUrl != null ? getCORSProxyImageUri(imageUrl!) : null;
  String get players => (minPlayers != null && maxPlayers != null)
      ? '$minPlayers - $maxPlayers'
      : '?';
  String get playtime => (minPlaytime != null && maxPlaytime != null)
      ? '$minPlaytime - $maxPlaytime'
      : '?';
}
