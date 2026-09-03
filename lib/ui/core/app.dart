import "package:material_ui/material_ui.dart";

/// The main layout of the app.
///
/// Sidebar on the left, content on the right.
class const AppShell({
  super.key,
  required final Widget sidebar,
  required final Widget child,
}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(width: 200, child: sidebar),
          const VerticalDivider(width: 1.5),
          Expanded(child: child),
        ],
      ),
    );
  }
}
