import "package:material_ui/material_ui.dart";

import "../../utils/preview.dart";

@Preview(name: "Icon Button", group: "Buttons", textScaleFactor: 1.5, background: true)
Widget iconButtonPreview() => IconButton(icon: Icon(Icons.add), onPressed: () {});

@Preview(name: "Icon Button - Outlined", group: "Buttons", textScaleFactor: 1.5, background: true)
Widget outlinedIconButtonPreview() => IconButton.outlined(icon: Icon(Icons.add), onPressed: () {});

@Preview(name: "Icon Button - Filled", group: "Buttons", textScaleFactor: 1.5, background: true)
Widget filledIconButtonPreview() => IconButton.filled(icon: Icon(Icons.add), onPressed: () {});

@Preview(name: "Icon Button - Filled Tonal", group: "Buttons", textScaleFactor: 1.5, background: true)
Widget filledTonalIconButtonPreview() => IconButton.filledTonal(icon: Icon(Icons.add), onPressed: () {});
