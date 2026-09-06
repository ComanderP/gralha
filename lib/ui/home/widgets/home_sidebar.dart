import "package:material_ui/material_ui.dart";
import "package:provider/provider.dart";

import "../../../data/repositories/universe/universe_repository.dart";
import "../../../data/repositories/universe/universe_repository_local.dart";
import "../../../utils/preview.dart";
import "../../core/sidebar.dart";
import "../view_models/home_sidebar_viewmodel.dart";

@Preview(name: "Populated Sidebar", group: "Home", size: Size(280, 500))
WidgetBuilder homeSidebarPopulated() =>
    (context) => HomeSidebar(
      viewModel: HomeSidebarViewModel(
        universeRepository: context.read<UniverseRepository>(),
      ),
    );

@Preview(name: "Empty Sidebar", group: "Home", size: Size(280, 500))
Widget homeSidebarEmpty() => HomeSidebar(
  viewModel: HomeSidebarViewModel(
    universeRepository: UniverseRepositoryLocal(universes: []),
  ),
);

class const HomeSidebar({
  super.key,

  /// The view model that provides the data for the home sidebar.
  required final HomeSidebarViewModel _viewModel,
}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = TextTheme.of(context);
    return ListenableBuilder(
      listenable: _viewModel,
      builder: (context, _) => Sidebar(
        leading: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(16),
          child: Text(
            "Story App",
            style: textTheme.titleLarge,
          ),
        ),
        middle: Column(
          children: [
            SidebarSectionTitle("Menu"),
            SidebarSectionButton("Recent"),
            SidebarSectionButton("All Stories"),
            SidebarSectionButton("All Universes"),
            SidebarSectionTitle("Universes"),
            if (_viewModel.universes.isEmpty)
              Text(
                "No universes found. Create one to get started!",
                style: textTheme.bodySmall?.copyWith(color: textTheme.bodySmall?.color?.withAlpha(150)),
              )
            else
              Expanded(
                child: ListView(
                  children: [
                    for (final universe in _viewModel.universes) SidebarSectionButton(universe.name),
                  ],
                ),
              ),
          ],
        ),
        trailing: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            spacing: 5,
            children: [
              SidebarSectionDivider(),
              Text("Version 1.0.0", style: textTheme.bodySmall),
            ],
          ),
        ),
      ),
    );
  }
}
