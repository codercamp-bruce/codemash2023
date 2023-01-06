import 'package:cm23mp/main.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// This is the screen where we will search for games
class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
        actions: [
          IconButton(
            icon: const Icon(Icons.list),
            onPressed: () {
              context.push(RoutesEnum.collectionList.routePath);
            },
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text('Search for Games'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Expanded(
                child: TextField(),
              ),
              ElevatedButton(
                onPressed: () {
                  context.push(RoutesEnum.searchResults.routePath);
                },
                child: const Text('Search'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
