import 'package:flutter/material.dart';

// This is the screen where the details of a game will be displayed
class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
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
