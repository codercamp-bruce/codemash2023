// import 'package:auto_size_text/auto_size_text.dart';
// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:fcode101/app/app.dart';
// //import 'package:fcode101/app/router.dart';
// import 'package:fcode101/models/game.dart';
// import 'package:fcode101/state/game_search_notifier.dart';
// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// class GameListItem extends ConsumerWidget {
//   const GameListItem({
//     super.key,
//     required this.game,
//   });

//   final Game game;

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     //  final nav = ref.read(routerServiceProvider);

//     return Card(
//       elevation: 5,
//       child: Padding(
//         padding: const EdgeInsets.all(7),
//         child: Padding(
//           padding: const EdgeInsets.only(left: 10, top: 5),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               GestureDetector(
//                 onTap: () {
//                   context.push(
//                     RoutesEnum.searchDetails.routePath
//                         .replaceAll(':gameId', game.id!),
//                     extra: game,
//                   );
//                 },
//                 child: Padding(
//                   padding: const EdgeInsets.only(bottom: 10),
//                   child: Row(
//                     children: <Widget>[
//                       GestureDetector(
//                         onTap: () {
//                           final gameActions =
//                               ref.read(gameSearchNotifierProvider.notifier);
//                           if (!game.inCollection) {
//                             gameActions.saveGameToCollection(game);
//                             ScaffoldMessenger.of(context).showSnackBar(
//                               SnackBar(
//                                 duration: const Duration(milliseconds: 2500),
//                                 backgroundColor: Colors.green[800],
//                                 content: Text(
//                                   'Added Game: "${game.name!}" to Collection',
//                                 ),
//                               ),
//                             );
//                           } else {
//                             gameActions.removeGameFromCollection(game);
//                             ScaffoldMessenger.of(context).showSnackBar(
//                               SnackBar(
//                                 clipBehavior: Clip.antiAlias,
//                                 dismissDirection: DismissDirection.up,
//                                 duration: const Duration(milliseconds: 1500),
//                                 backgroundColor: Colors.red[800],
//                                 content: Text(
//                                   'Removed Game: "${game.name!}" from Collection',
//                                 ),
//                               ),
//                             );
//                           }
//                         },
//                         child: Padding(
//                           padding: const EdgeInsets.fromLTRB(5, 0, 10, 5),
//                           child: game.inCollection
//                               ? Icon(
//                                   Icons.star,
//                                   color: Colors.yellow[800],
//                                 )
//                               : Icon(
//                                   Icons.star_border_outlined,
//                                   color: Colors.blueGrey[200],
//                                 ),
//                         ),
//                       ),
//                       if (game.imageUrl != null)
//                         CachedNetworkImage(
//                           height: 50,
//                           imageUrl: game.imageUrl ??
//                               "http://via.placeholder.com/350x150",
//                           placeholder: (context, url) =>
//                               const CircularProgressIndicator(),
//                           errorWidget: (context, url, error) =>
//                               const Icon(Icons.error),
//                         ),
//                       // Image.network(
//                       //   game.imageUrl!,
//                       //   height: 50,
//                       // ),
//                       const SizedBox(
//                         width: 12,
//                       ),
//                       Expanded(
//                         child: AutoSizeText(
//                           game.name ?? 'no name',
//                           maxLines: 1,
//                           style: Theme.of(context)
//                               .textTheme
//                               .headlineMedium!
//                               .copyWith(
//                                 color: Colors.blue[900],
//                                 fontFamily: GoogleFonts.bangers().fontFamily,
//                               ),
//                         ),
//                       ),
//                       const Icon(Icons.arrow_forward_ios),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
