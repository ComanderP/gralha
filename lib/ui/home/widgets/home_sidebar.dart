import "package:flutter/widgets.dart";

import "../../core/sidebar.dart";
import "../view_models/home_sidebar_viewmodel.dart";

class const HomeSidebar({
  super.key,

  /// The view model that provides the data for the home sidebar.
  required final HomeSidebarViewModel _viewModel,
}) extends StatefulWidget {
  @override
  State<HomeSidebar> createState() => _HomeSidebarState();
}

class _HomeSidebarState extends State<HomeSidebar> {
  @override
  Widget build(BuildContext context) {
    return Sidebar(
      sections: [
        Text("Home Sidebar"),
        for (final universe in widget._viewModel.universes) Text(universe.name),
      ],
    );
  }
}
