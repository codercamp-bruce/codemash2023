import 'package:cm23mp/models/game.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'local_game_repo.g.dart';

@riverpod
GameHiveRepo localRepo(LocalRepoRef ref) {
  return GameHiveRepo();
}

abstract class IGameRepo {
  Game? getGameById(String gameId);
  List<Game> getGames();
  void saveOrUpdateGame(Game game);
  bool gameIdExists(String gameId);
  void deleteGameById(String gameId);
}

const gameHiveBoxName = 'games';

class GameHiveRepo implements IGameRepo {
  @override
  Game? getGameById(String gameId) {
    final box = Hive.box<Game>(gameHiveBoxName);
    return box.get(gameId);
  }

  @override
  void saveOrUpdateGame(Game game) {
    final box = Hive.box<Game>(gameHiveBoxName);
    box.put(game.id, game.copyWith(inCollection: true));
  }

  @override
  List<Game> getGames() {
    final box = Hive.box<Game>(gameHiveBoxName);
    final all = box.values.toList();
    return all;
  }

  @override
  bool gameIdExists(String gameId) {
    final box = Hive.box<Game>(gameHiveBoxName);
    final exists = box.containsKey(gameId);
    return exists;
  }

  @override
  void deleteGameById(String gameId) {
    final box = Hive.box<Game>(gameHiveBoxName);
    final exists = box.containsKey(gameId);
    if (exists) {
      box.delete(gameId);
    }
  }
}
