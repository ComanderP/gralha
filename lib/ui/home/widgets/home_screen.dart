import "package:flutter/widgets.dart";
import "package:provider/provider.dart";

import "../../core/app.dart";
import "../view_models/home_sidebar_viewmodel.dart";
import "home_sidebar.dart";

/// The main screen of the application.
///
/// Provides the view model to the sidebar.
class const HomeScreen({
  super.key,

  /// The content displayed next to the sidebar.
  required final Widget child,
}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeSidebarViewModel(universeRepository: context.read()),
      builder: (context, _) => AppShell(
        sidebar: HomeSidebar(viewModel: context.read<HomeSidebarViewModel>()),
        child: child,
      ),
    );
  }
}
