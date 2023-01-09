import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cm23mp/models/game.dart';
import 'package:cm23mp/widgets/game_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:google_fonts/google_fonts.dart';

class GameDetailsCard extends StatelessWidget {
  const GameDetailsCard({
    super.key,
    required this.game,
  });

  final Game game;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(7),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, top: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  children: <Widget>[
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
                  ],
                ),
              ),
              if (game.imageUrl != null) GameImage(game: game),
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 20, 5, 30),
                child: HtmlWidget(
                  game.description ?? 'no description',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              if (game.players != null)
                Text(
                  game.players!,
                  style: textTheme.headlineSmall,
                ),
              const SizedBox(
                height: 10,
              ),
              if (game.playtime != null)
                Text(
                  game.playtime!,
                  style: textTheme.headlineSmall,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
