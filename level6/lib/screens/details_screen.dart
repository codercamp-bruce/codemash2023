import 'package:cm23mp/main.dart';
import 'package:cm23mp/services/fake_game_list.dart';
import 'package:cm23mp/widgets/game_details_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// This is the screen where the details of a game will be displayed
class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final testList = getSnowGames();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.tertiary.withAlpha(150),
        title: const Text('Details'),
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
          children: <Widget>[
            Row(
              children: const [
                Text("This is the details screen"),
              ],
            ),
            GameDetailsCard(game: testList[0]),
          ],
        ),
      ),
    );
  }
}
