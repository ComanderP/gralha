/// The app's theme data.
library;

import "package:material_ui/material_ui.dart";

abstract final class AppColours {
  static const Color seed = Color(0xFF4C5BD4);
}

abstract final class AppFonts {
  /// https://rsms.me/inter/
  static const String inter = "Inter";
  static const List<String> interFallback = ["packages/gralha/$inter"];
}

final ThemeData lightTheme = _buildTheme(Brightness.light);
final ThemeData darkTheme = _buildTheme(Brightness.dark);

ThemeData _buildTheme(Brightness brightness) => ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: AppColours.seed,
    brightness: brightness,
  ),
  fontFamily: AppFonts.inter,
  fontFamilyFallback: AppFonts.interFallback,
);
