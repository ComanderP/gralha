import "package:material_ui/material_ui.dart";

/// The settings screen.
class const SettingsScreen({super.key}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: const Icon(Icons.article_outlined),
          title: const Text("Licences"),
          subtitle: const Text("Gralha and the packages it is built with"),
          onTap: () => showLicensePage(
            context: context,
            applicationName: "Gralha",
            applicationLegalese: "Copyright 2026 Paulo Oliva\nhttps://github.com/ComanderP/gralha",
          ),
        ),
      ],
    );
  }
}
