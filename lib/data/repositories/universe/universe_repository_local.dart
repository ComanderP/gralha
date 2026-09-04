import "../../../domain/models/universe/universe.dart";
import "../../../domain/models/ids.dart";
import "../../../utils/result.dart";
import "universe_repository.dart";

class UniverseRepositoryLocal({
  /// An optional starting list of universes to populate the repository with.
  List<Universe> universes = const [],
}) implements UniverseRepository {
  final List<Universe> _universes = [...universes];

  @override
  Future<Result<List<Universe>>> getAll() async => Result.ok(List.unmodifiable(_universes));

  @override
  Future<Result<Universe>> findById(UniverseId id) async {
    try {
      return Result.ok(_universes.firstWhere((u) => u.id == id));
    } on StateError {
      return Result.error(Exception("Universe not found: $id"));
    }
  }

  @override
  Future<Result<void>> save(Universe universe) async {
    final i = _universes.indexWhere((u) => u.id == universe.id);
    if (i == -1) {
      _universes.add(universe);
    } else {
      _universes[i] = universe;
    }
    return const Result.ok(null);
  }

  @override
  Future<Result<void>> delete(UniverseId id) async {
    _universes.removeWhere((u) => u.id == id);
    return const Result.ok(null);
  }
}
