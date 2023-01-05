import 'package:flutter/material.dart';

// This is the screen where we will search for games
class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
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
                onPressed: () {},
                child: const Text('Search'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
