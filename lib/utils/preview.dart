import "package:flutter/widget_previews.dart" as previews show Preview;
import "package:flutter/widget_previews.dart";
import "package:gralha/config/dependencies.dart";
import "package:material_ui/material_ui.dart";
import "package:provider/provider.dart";

import "../config/theme.dart";

export "package:flutter/widget_previews.dart" hide Preview;

final class const Preview({
  super.name,
  super.group,
  super.size,
  super.textScaleFactor,
  super.brightness,
  super.localizations,
  bool background = false,
}) extends previews.Preview {
  this
    : super(
        theme: Preview._themeBuilder,
        wrapper: background ? Preview._backgroundWrapper : Preview._plainWrapper,
      );

  static PreviewThemeData _themeBuilder() {
    return BrightnessPreviewTheme(light: lightTheme, dark: darkTheme);
  }

  static Widget _plainWrapper(Widget child) => MultiProvider(providers: dependencies, child: child);

  static Widget _backgroundWrapper(Widget child) => MultiProvider(
    providers: dependencies,
    child: Builder(
      builder: (context) => Container(
        padding: const EdgeInsets.all(8),
        color: Theme.of(context).colorScheme.surfaceContainerHighest,
        child: child,
      ),
    ),
  );
}

final class const BrightnessPreviewTheme({
  required final ThemeData _light,
  required final ThemeData _dark,
}) extends PreviewThemeData {
  @override
  Widget apply(BuildContext context, Widget child) => Theme(
    data: MediaQuery.platformBrightnessOf(context) == Brightness.dark ? _dark : _light,
    child: child,
  );
}
