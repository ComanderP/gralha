import "package:flutter/foundation.dart";

import "../../../data/repositories/universe/universe_repository.dart";
import "../../../domain/models/ids.dart";
import "../../../domain/models/universe/universe.dart";
import "../../../utils/command.dart";
import "../../../utils/result.dart";

class HomeSidebarViewModel({
  /// The repository that provides the list of universes.
  required final UniverseRepository _universeRepository,
}) extends ChangeNotifier {
  this {
    load = Command0(_load)..execute();
  }

  /// Command to load the list of universes from the repository.
  late final Command0<void> load;

  List<Universe> _universes = [];

  List<Universe> get universes => _universes;

  /// The universe with [id], or null if the list has not loaded yet.
  Universe? findById(UniverseId? id) {
    for (final universe in _universes) {
      if (universe.id == id) return universe;
    }
    return null;
  }

  /// The name of the universe with [id].
  String nameOf(UniverseId? id) => findById(id)?.name ?? "";

  /// Loads the list of universes from the repository, and notifies listeners.
  Future<Result<void>> _load() async {
    final result = await _universeRepository.getAll();
    switch (result) {
      case Ok<List<Universe>>():
        _universes = result.value;
      case Error<List<Universe>>():
        return result;
    }

    notifyListeners();
    return const Result.ok(null);
  }
}
