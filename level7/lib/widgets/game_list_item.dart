import 'package:auto_size_text/auto_size_text.dart';
import 'package:cm23mp/main.dart';
import 'package:cm23mp/models/game.dart';
import 'package:cm23mp/widgets/game_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class GameListItem extends StatelessWidget {
  const GameListItem({
    super.key,
    required this.game,
  });

  final Game game;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(7),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, top: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  context.push(
                    RoutesEnum.gameDetails.routePath
                        .replaceAll(':gameId', game.id!),
                    extra: game,
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: <Widget>[
                      if (game.corsImageUrl != null) GameImage(game: game),
                      const SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        child: AutoSizeText(
                          game.name ?? 'no name',
                          maxLines: 1,
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .copyWith(
                                color: Colors.blue[900],
                                fontFamily: GoogleFonts.bangers().fontFamily,
                              ),
                        ),
                      ),
                      const Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
