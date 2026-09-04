import "package:flutter/foundation.dart";
import "package:provider/provider.dart";
import "package:provider/single_child_widget.dart";

import "../data/repositories/universe/universe_repository_local.dart";
import "../data/repositories/universe/universe_repository.dart";
import "../data/samples.dart";

List<SingleChildWidget> get dependencies => [
  Provider<UniverseRepository>(
    create: (ctx) => UniverseRepositoryLocal(universes: kDebugMode ? sampleUniverses : const []),
  ),
];
