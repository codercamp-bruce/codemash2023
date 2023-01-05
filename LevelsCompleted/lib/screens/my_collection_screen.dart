import 'package:cm23mp/main.dart';
import 'package:cm23mp/services/local_game_repo.dart';
import 'package:cm23mp/widgets/game_list_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// This is the screen where our collection of games will be displayed
class MyCollectionScreen extends ConsumerWidget {
  const MyCollectionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localRepo = ref.read(localRepoProvider);
    final myCollection = localRepo.getGames();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary.withAlpha(150),
        title: const Text('Game Collection'),
        actions: [
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
            if (myCollection.isEmpty)
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(child: Text('No games in collection')),
              ),
            for (final game in myCollection)
              GameListItem(
                game: game,
              ),
          ],
        ),
      ),
    );
  }
}
