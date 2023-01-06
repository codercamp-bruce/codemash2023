import 'package:cm23mp/main.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// This is the screen where the details of a game will be displayed
class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
      body: Column(
        children: <Widget>[
          Row(
            children: const [
              Text("This is the details screen"),
            ],
          ),
        ],
      ),
    );
  }
}
