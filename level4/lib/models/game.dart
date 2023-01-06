// // ignore_for_file: invalid_annotation_target
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:hive_flutter/hive_flutter.dart';

// part 'game.freezed.dart';
// part 'game.g.dart';

// @freezed
// class Game with _$Game {
//   @HiveType(typeId: 1)
//   factory Game({
//     @HiveField(0) String? id,
//     @HiveField(1) String? name,
//     @Default(false) bool inCollection,
//     @Default(false) bool isCardGame,
//     @Default(false) bool isBoardGame,
//     @Default(false) bool isDiceGame,
//     @HiveField(4) @JsonKey(name: 'min_players') int? minPlayers,
//     @HiveField(5) @JsonKey(name: 'max_players') int? maxPlayers,
//     @HiveField(6) @JsonKey(name: 'min_playtime') int? minPlaytime,
//     @HiveField(7) @JsonKey(name: 'max_playtime') int? maxPlaytime,
//     @HiveField(8) @JsonKey(name: 'min_age') int? minAge,
//     @HiveField(9) String? description,
//     @HiveField(10) @JsonKey(name: 'image_url') String? imageUrl,
//     @HiveField(16) String? type,
//   }) = _Game;
//   factory Game.fromJson(Map<String, dynamic> json) => _$GameFromJson(json);
//   const Game._();

//   String get players => (minPlayers != null && maxPlayers != null)
//       ? '$minPlayers - $maxPlayers'
//       : '?';
//   String get playtime => (minPlaytime != null && maxPlaytime != null)
//       ? '$minPlaytime - $maxPlaytime'
//       : '?';
// }

// extension GameValidator on Game {
//   static String? validateId(String? value) {
//     if (value == null || value.isEmpty) {
//       return 'Id is required';
//     }
//     return null;
//   }

//   String? get validateName {
//     if (name == null || name!.isEmpty) {
//       return 'Name is required';
//     }
//     if (name!.length > 10) {
//       return 'Name must be less than 10 characters';
//     }
//     return null;
//   }

//   static String? validateImageUrl(String? value) {
//     if (value == null || value.isEmpty) {
//       return 'Image Url is required';
//     }
//     return null;
//   }
// }
