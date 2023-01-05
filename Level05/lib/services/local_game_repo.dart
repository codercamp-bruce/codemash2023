// import 'package:fcode101/models/game.dart';
// import 'package:hive_flutter/hive_flutter.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// final gameRepoProvider = Provider<GameHiveRepo>((ref) {
//   return GameHiveRepo();
// });

// abstract class IGameRepo {
//   Game? getGameById(String gameId);
//   List<Game> getGames();
//   void saveOrUpdateGame(Game game);
//   bool gameExists(String gameId);
//   void deleteGame(String gameId);
// }

// const gameHiveBoxName = 'games';

// class GameHiveRepo implements IGameRepo {
//   @override
//   Game? getGameById(String gameId) {
//     final box = Hive.box<Game>(gameHiveBoxName);
//     return box.get(gameId);
//   }

//   @override
//   void saveOrUpdateGame(Game game) {
//     final box = Hive.box<Game>(gameHiveBoxName);
//     box.put(game.id, game);
//   }

//   @override
//   List<Game> getGames() {
//     final box = Hive.box<Game>(gameHiveBoxName);
//     final all = box.values.toList();
//     return all;
//   }

//   @override
//   bool gameExists(String gameId) {
//     final box = Hive.box<Game>(gameHiveBoxName);
//     final exists = box.containsKey(gameId);
//     return exists;
//   }

//   @override
//   void deleteGame(String gameId) {
//     final box = Hive.box<Game>(gameHiveBoxName);
//     final exists = box.containsKey(gameId);
//     if (exists) {
//       box.delete(gameId);
//     }
//   }
// }
