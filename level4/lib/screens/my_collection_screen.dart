import 'package:cm23mp/main.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// This is the screen where our collection of games will be displayed
class MyCollectionScreen extends StatelessWidget {
  const MyCollectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
      body: Column(
        children: <Widget>[
          Row(
            children: const [
              Text("This where the game collection will be displayed"),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              context.push(RoutesEnum.gameDetails.routePath);
            },
            child: const Text('Game 1'),
          ),
          ElevatedButton(
            onPressed: () {
              context.push(RoutesEnum.gameDetails.routePath);
            },
            child: const Text('Game 2'),
          ),
        ],
      ),
    );
  }
}
