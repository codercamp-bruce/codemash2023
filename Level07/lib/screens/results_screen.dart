import 'package:cm23mp/main.dart';
import 'package:cm23mp/services/bgatlas_api.dart';
import 'package:cm23mp/widgets/game_list_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// This is the screen where the search results will be displayed
class ResultsScreen extends ConsumerWidget {
  const ResultsScreen({required this.searchTerm, super.key});

  final String? searchTerm;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchResults =
        ref.watch(bgaGamesByNameGenProvider(name: searchTerm!));
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
      body: searchResults.when(
        data: (games) {
          return SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                for (final game in games ?? []) GameListItem(game: game),
              ],
            ),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Text(error.toString()),
      ),
    );
  }
}
