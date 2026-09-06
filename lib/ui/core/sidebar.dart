import "package:material_ui/material_ui.dart";

import "../../utils/preview.dart";

@Preview(name: "Sidebar Section Title", group: "Core", textScaleFactor: 2, background: true)
Widget sectionTitlePreview() => SidebarSectionTitle("Section Title");

class const Sidebar({
  super.key,

  /// Whether the sidebar is extended or collapsed.
  final bool extended = true,

  /// The widget to display at the top of the sidebar, above the sections.
  final Widget? leading,

  /// The widget to display at the bottom of the sidebar, below the sections.
  final Widget? trailing,

  /// The sections to display, in order.
  required final Widget middle,
}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: extended ? 280 : 80,
      color: Theme.of(context).colorScheme.surfaceContainerHighest,
      child: Column(
        children: [
          ?leading,
          Expanded(
            child: middle,
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
    return Text(
      title,
      style: TextTheme.of(context).titleMedium,
    );
  }
}

class const SidebarSectionButton(final String label, {super.key}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          label,
          style: TextTheme.of(context).bodyMedium,
        ),
      ),
    );
  }
}

class const SidebarSectionDivider({super.key}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: 2,
      height: 1,
    );
  }
}
