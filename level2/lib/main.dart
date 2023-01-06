import 'package:cm23mp/app/flex_color_helpers.dart';
import 'package:cm23mp/screens/home.dart';
import 'package:flex_seed_scheme/flex_seed_scheme.dart';
import 'package:flutter/material.dart';

// Define your seed colors.
const Color primarySeedColor = Colors.blue; // Color(0xFF3871BB);
const Color secondarySeedColor = Color(0xFF6750A4);
const Color tertiarySeedColor = Color(0xFF6CA450);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const usedTone = FlexTonesEnum.custom;
    const bool useSecondaryKey = false; // true to use secondary color
    const bool useTertiaryKey = false; // true to use tertiary color
    const bool keepAllOnColorsBW =
        true; // false to have non-white background, non-black text
    const bool useMaterial3 = false;
    final textTheme = Theme.of(context).textTheme;
    // final textTheme =
    //     GoogleFonts.balsamiqSansTextTheme(Theme.of(context).textTheme);
    return MaterialApp(
      title: 'My Games Collection',
      themeMode: ThemeMode.light, // or dark, or system
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
          textTheme: textTheme),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
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
  brightness: Brightness.light,
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
