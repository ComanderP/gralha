/// Routes for the application.
///
/// Using typed routes.
library;

import "package:flutter/widgets.dart";
import "package:go_router/go_router.dart";
import "package:provider/provider.dart";

import "../ui/core/app.dart";
import "../ui/home/view_models/home_sidebar_viewmodel.dart";
import "../ui/home/widgets/home_sidebar.dart";
import "../ui/settings/widgets/settings_screen.dart";

part "app_router.g.dart";

/// The application's [GoRouter], used on `main()`.
final appRouter = GoRouter(routes: $appRoutes);

// ---------------------------------------------------------------------------
// Home shell routes
// ---------------------------------------------------------------------------

@TypedShellRoute<HomeShellRoute>(
  routes: [
    TypedGoRoute<HomeRoute>(path: "/"),
  ],
)
class const HomeShellRoute() extends ShellRouteData {
  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) => AppShell(
    sidebar: HomeSidebar(viewModel: HomeSidebarViewModel(universeRepository: context.read())),
    child: navigator,
  );
}

class const HomeRoute() extends GoRouteData with $HomeRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) => const Center(child: Text("Library"));
}

// ---------------------------------------------------------------------------
// Settings shell routes
// ---------------------------------------------------------------------------

@TypedShellRoute<SettingsShellRoute>(
  routes: [
    TypedGoRoute<SettingsRoute>(path: "/settings"),
  ],
)
class const SettingsShellRoute() extends ShellRouteData {
  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) =>
      AppShell(sidebar: Placeholder(), child: navigator);
}

class const SettingsRoute() extends GoRouteData with $SettingsRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) => const SettingsScreen();
}
