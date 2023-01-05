// import 'package:auto_size_text/auto_size_text.dart';
// import 'package:fcode101/models/game.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// class GameDetailsCard extends ConsumerWidget {
//   const GameDetailsCard({
//     super.key,
//     required this.game,
//   });

//   final Game game;

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     // final nav = ref.read(routerServiceProvider);

//     return Card(
//       elevation: 5,
//       child: Padding(
//         padding: const EdgeInsets.all(7),
//         child: Padding(
//           padding: const EdgeInsets.only(left: 10, top: 5),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               Padding(
//                 padding: const EdgeInsets.only(bottom: 10),
//                 child: Row(
//                   children: <Widget>[
//                     Expanded(
//                       child: AutoSizeText(
//                         game.name ?? 'no name',
//                         maxLines: 1,
//                         style: Theme.of(context)
//                             .textTheme
//                             .headlineMedium!
//                             .copyWith(
//                               color: Colors.blue[900],
//                               fontFamily: GoogleFonts.bangers().fontFamily,
//                             ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               if (game.imageUrl != null)
//                 Image.network(
//                   game.imageUrl!,
//                   height: 100,
//                 ),
//               Padding(
//                 padding: const EdgeInsets.fromLTRB(5, 20, 5, 30),
//                 child: HtmlWidget(
//                   game.description ?? 'no description',
//                 ),
//               ),
//               const SizedBox(
//                 height: 30,
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
