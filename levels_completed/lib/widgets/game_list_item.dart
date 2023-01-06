import 'package:auto_size_text/auto_size_text.dart';
import 'package:cm23mp/main.dart';
import 'package:cm23mp/models/game.dart';
import 'package:cm23mp/services/bgatlas_api.dart';
import 'package:cm23mp/services/local_game_repo.dart';
import 'package:cm23mp/widgets/game_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GameListItem extends ConsumerWidget {
  const GameListItem({
    super.key,
    required this.game,
    this.searchTerm,
  });

  final Game game;
  final String? searchTerm;

  void refreshIfInSearch(WidgetRef ref) {
    if (searchTerm != null) {
      ref.invalidate(bgaGamesByNameGenProvider(name: searchTerm!));
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localRepo = ref.read(localRepoProvider);

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
                      GestureDetector(
                        onTap: () {
                          if (searchTerm != null && !game.inCollection) {
                            localRepo.saveOrUpdateGame(game);
                            refreshIfInSearch(ref);
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                duration: const Duration(milliseconds: 2500),
                                backgroundColor: Colors.green[800],
                                content: Text(
                                  'Added Game: "${game.name!}" to Collection',
                                ),
                              ),
                            );
                          } else {
                            localRepo.deleteGameById(game.id!);
                            refreshIfInSearch(ref);
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                clipBehavior: Clip.antiAlias,
                                dismissDirection: DismissDirection.up,
                                duration: const Duration(milliseconds: 1500),
                                backgroundColor: Colors.red[800],
                                content: Text(
                                  'Removed Game: "${game.name!}" from Collection',
                                ),
                              ),
                            );
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(5, 0, 10, 5),
                          child: game.inCollection
                              ? Icon(
                                  Icons.star,
                                  color: Colors.yellow[800],
                                )
                              : Icon(
                                  Icons.star_border_outlined,
                                  color: Colors.blueGrey[200],
                                ),
                        ),
                      ),
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
