import "package:material_ui/material_ui.dart";

import "../../utils/preview.dart";

@Preview(name: "Sidebar Section Title", group: "Core", textScaleFactor: 2)
WidgetBuilder sectionTitlePreview() =>
    (context) => Container(
      color: Theme.of(context).colorScheme.surfaceContainerHighest,
      child: SidebarSectionTitle("Section Title"),
    );

class const Sidebar({
  super.key,

  /// Whether the sidebar is extended or collapsed.
  final bool extended = true,

  /// The widget to display at the top of the sidebar, above the sections.
  final Widget? leading,

  /// The widget to display at the bottom of the sidebar, below the sections.
  final Widget? trailing,

  /// The sections to display, in order.
  required final List<Widget> sections,
}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: extended ? 250 : 80,
      color: Theme.of(context).colorScheme.surfaceContainerHighest,
      child: Column(
        children: [
          ?leading,
          Expanded(
            child: ListView(
              children: sections,
            ),
          ),
          ?trailing,
        ],
      ),
    );
  }
}

class const SidebarSectionTitle(final String title, {super.key}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextTheme.of(context).labelMedium,
        ),
      ],
    );
  }
}
