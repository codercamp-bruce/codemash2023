import 'dart:convert';

import 'package:cm23mp/app/cors_image_helper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game.freezed.dart';
part 'game.g.dart';

@freezed
class Game with _$Game {
  factory Game({
    String? id,
    String? name,
    @JsonKey(name: 'min_players') int? minPlayers,
    @JsonKey(name: 'max_players') int? maxPlayers,
    @JsonKey(name: 'min_playtime') int? minPlaytime,
    @JsonKey(name: 'max_playtime') int? maxPlaytime,
    @JsonKey(name: 'min_age') int? minAge,
    String? description,
    @JsonKey(name: 'image_url') String? imageUrl,
    String? type,
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

Game getCatanGameFromJSONString() {
  final catan = Game.fromJson(
    jsonDecode("""
 {
  "id": "13",
  "name": "Catan",
  "min_players": 3,
  "max_players": 4,
  "min_playtime": 60,
  "max_playtime": 120,
  "min_age": 10,
  "description": "In CATAN (formerly The Settlers of Catan), players try to be the dominant force on the island of Catan by building settlements, cities, and roads. On each turn dice are rolled to determine what resources the island produces. Players build by spending resources (sheep, wheat, wood, brick and ore) that are depicted by these resource cards; each land type, with the exception of the unproductive desert, produces a specific resource: hills produce brick, forests produce wood, mountains produce ore, fields produce wheat, and pastures produce sheep.Setup includes randomly placing large hexagonal tiles (each showing a resource or the desert) in a honeycomb shape and surrounding them with water tiles, some of which contain ports of exchange. Number disks, which will correspond to die rolls (two 6-sided dice are used), are placed on each resource tile. Each player is given two settlements (think: houses) and roads (sticks) which are, in turn, placed on intersections and borders of the resource tiles. Players collect a hand of resource cards based on which hex tiles their last-placed house is adjacent to. A robber pawn is placed on the desert tile.A turn consists of possibly playing a development card, rolling the dice, everyone (perhaps) collecting resource cards based on the roll and position of houses (or upgraded cities think: hotels) unless a 7 is rolled, turning in resource cards (if possible and desired) for improvements, trading cards at a port, and trading resource cards with other players. If a 7 is rolled, the active player moves the robber to a new hex tile and steals resource cards from other players who have built structures adjacent to that tile.Points are accumulated by building settlements and cities, having the longest road and the largest army (from some of the development cards), and gathering certain development cards that simply award victory points. When a player has gathered 10 points (some of which may be held in secret), he announces his total and claims the win.CATAN has won multiple awards and is one of the most popular games in recent history due to its amazing ability to appeal to experienced gamers as well as those new to the hobby.Die Siedler von Catan was originally published by KOSMOS and has gone through multiple editions. It was licensed by Mayfair and has undergone four editions as The Settlers of Catan. In 2015, it was formally renamed CATAN to better represent itself as the core and base game of the CATAN series. It has been re-published in two travel editions, portable edition and compact edition, as a special gallery edition (replaced in 2009 with a family edition), as an anniversary wooden edition, as a deluxe 3D collector's edition, in the basic Simply Catan, as a beginner version, and with an entirely new theme in Japan and Asia as Settlers of Catan: Rockman Edition. Numerous spin-offs and expansions have also been made for the game.",
  "image_url": "https://cf.geekdo-images.com/W3Bsga_uLP9kO91gZ7H8yw__original/img/xV7oisd3RQ8R-k18cdWAYthHXsA=/0x0/filters:format(jpeg)/pic2419375.jpg",
  "year": "1995"
}
"""),
  );
  return catan;
}

// part 'game.freezed.dart';

// @freezed
// class Game with _$Game {
//   factory Game({
//     String? id,
//     String? name,
//     String? description,
//     String? imageUrl,
//   }) = _Game;
// }

// class GameClassic {
//   String name;
//   String description;
//   String imageUrl;

//   GameClassic({
//     required this.name,
//     required this.description,
//     required this.imageUrl,
//   });
// }
