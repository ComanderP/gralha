import "package:flutter/widgets.dart";

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
      color: const Color.fromARGB(116, 157, 157, 157),
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
