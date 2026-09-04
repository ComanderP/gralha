import "package:material_ui/material_ui.dart";
import "package:provider/provider.dart";

import "config/dependencies.dart";
import "config/licences.dart";
import "config/theme.dart";
import "routing/app_router.dart";

void main() {
  registerAppLicence();
  runApp(const GralhaApp());
}

class GralhaApp extends StatelessWidget {
  const GralhaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: dependencies,
      child: MaterialApp.router(
        title: "Gralha",
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: ThemeMode.system,
        routerConfig: appRouter,
      ),
    );
  }
}
