import 'package:cm23mp/models/game.dart';
import 'package:flutter/material.dart';

class GameImage extends StatelessWidget {
  const GameImage({
    super.key,
    required this.game,
  });

  final Game game;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      game.corsImageUrl!,
      height: 50,
      fit: BoxFit.fill,
      errorBuilder: (___, __, _) {
        return const Icon(Icons.error);
      },
      loadingBuilder: (
        BuildContext context,
        Widget child,
        ImageChunkEvent? loadingProgress,
      ) {
        if (loadingProgress == null) {
          return child;
        }
        return Center(
          child: CircularProgressIndicator(
            value: loadingProgress.expectedTotalBytes != null
                ? loadingProgress.cumulativeBytesLoaded /
                    loadingProgress.expectedTotalBytes!
                : null,
          ),
        );
      },
    );
  }
}
