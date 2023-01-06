import 'package:flutter/material.dart';

// This is the screen where our collection of games will be displayed
class MyCollectionScreen extends StatelessWidget {
  const MyCollectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Game Collection'),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: const [
              Text("This where the game collection will be displayed"),
            ],
          ),
        ],
      ),
    );
  }
}
