/// The app's theme data.
library;

import "package:material_ui/material_ui.dart";

abstract final class AppColours {
  static const Color seed = Color(0xFF4C5BD4);
}

final ThemeData lightTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: AppColours.seed),
);

final ThemeData darkTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: AppColours.seed,
    brightness: Brightness.dark,
  ),
);
