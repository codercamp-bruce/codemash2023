import 'package:cm23mp/main.dart';
import 'package:cm23mp/models/game.dart';
import 'package:cm23mp/services/fake_game_list.dart';
import 'package:cm23mp/widgets/game_list_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// This is the screen where the search results will be displayed
class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final test = getCatanGameFromJSONString();
    final testList = getSnowGames();
    debugPrint(test.corsImageUrl);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary.withAlpha(150),
        title: const Text('Results'),
        actions: [
          IconButton(
            icon: const Icon(Icons.list),
            onPressed: () {
              context.push(RoutesEnum.collectionList.routePath);
            },
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              context.go(RoutesEnum.search.routePath);
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("This is the results screen"),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                context.push(RoutesEnum.gameDetails.routePath);
              },
              child: const Text('Result 1'),
            ),
            ElevatedButton(
              onPressed: () {
                context.push(RoutesEnum.gameDetails.routePath);
              },
              child: const Text('Result 2'),
            ),
            GameListItem(game: test),
            for (final game in testList) GameListItem(game: game),
          ],
        ),
      ),
    );
  }
}
