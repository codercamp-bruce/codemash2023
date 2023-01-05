import 'package:cm23mp/app/flex_color_helpers.dart';
import 'package:cm23mp/screens/screens.dart';
import 'package:flex_seed_scheme/flex_seed_scheme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

// Define your seed colors.
const Color primarySeedColor = Color(0xFF6750A4);
const Color secondarySeedColor = Color(0xFF3871BB);
const Color tertiarySeedColor = Color(0xFF6CA450);

enum RoutesEnum {
  search('search', '/'),
  searchResults('searchResults', '/results'),
  gameDetails('gameDetails', '/details'),
  collectionList('collectionList', '/my-collection');

  final String routeName;
  final String routePath;
  const RoutesEnum(this.routeName, this.routePath);
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const usedTone = FlexTonesEnum.custom;
    const bool useSecondaryKey = true;
    const bool useTertiaryKey = true;
    const bool keepAllOnColorsBW = false;
    const bool useMaterial3 = true;
    final textTheme =
        GoogleFonts.balsamiqSansTextTheme(Theme.of(context).textTheme);
    return MaterialApp.router(
      title: 'My Games Collection',
      themeMode: ThemeMode.light,
      routerConfig: getGoRouterConfig(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.from(
        colorScheme: selectedSeedScheme(
          brightness: Brightness.light,
          tones: usedTone
              .tones(Brightness.light)
              .onMainsUseBW(keepAllOnColorsBW)
              .onSurfacesUseBW(keepAllOnColorsBW),
          useSecondaryKey: useSecondaryKey,
          useTertiaryKey: useTertiaryKey,
        ),
        useMaterial3: useMaterial3,
        textTheme: textTheme,
      ),
      darkTheme: ThemeData.from(
        colorScheme: selectedSeedScheme(
          brightness: Brightness.dark,
          tones: usedTone
              .tones(Brightness.dark)
              .onMainsUseBW(keepAllOnColorsBW)
              .onSurfacesUseBW(keepAllOnColorsBW),
          useSecondaryKey: useSecondaryKey,
          useTertiaryKey: useTertiaryKey,
        ),
        useMaterial3: useMaterial3,
        textTheme: textTheme,
      ),
    );
  }
}

GoRouter getGoRouterConfig() {
  return GoRouter(
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        name: RoutesEnum.search.routeName,
        path: RoutesEnum.search.routePath,
        builder: (context, state) {
          return const SearchScreen();
        },
      ),
      GoRoute(
        name: RoutesEnum.searchResults.routeName,
        path: RoutesEnum.searchResults.routePath,
        builder: (context, state) {
          return const ResultsScreen();
        },
      ),
      GoRoute(
        name: RoutesEnum.gameDetails.routeName,
        path: RoutesEnum.gameDetails.routePath,
        builder: (context, state) {
          return const DetailsScreen();
        },
      ),
      GoRoute(
        name: RoutesEnum.collectionList.routeName,
        path: RoutesEnum.collectionList.routePath,
        builder: (context, state) {
          return const MyCollectionScreen();
        },
      ),
    ],
  );
}

ColorScheme selectedSeedScheme({
  required Brightness brightness,
  required FlexTones tones,
  required bool useSecondaryKey,
  required bool useTertiaryKey,
}) =>
    SeedColorScheme.fromSeeds(
      brightness: brightness,
      primaryKey: primarySeedColor,
      secondaryKey: useSecondaryKey ? secondarySeedColor : null,
      tertiaryKey: useTertiaryKey ? tertiarySeedColor : null,
      tones: tones,
    );

final ColorScheme schemeLightHc = SeedColorScheme.fromSeeds(
  primaryKey: primarySeedColor,
  secondaryKey: secondarySeedColor,
  tertiaryKey: tertiarySeedColor,
  tones: FlexTones.ultraContrast(Brightness.light),
);

final ColorScheme schemeDarkHc = SeedColorScheme.fromSeeds(
  brightness: Brightness.dark,
  primaryKey: primarySeedColor,
  secondaryKey: secondarySeedColor,
  tertiaryKey: tertiarySeedColor,
  tones: FlexTones.ultraContrast(Brightness.dark),
);
