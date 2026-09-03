import "../../../domain/models/universe/universe.dart";
import "../../../domain/models/ids.dart";
import "../../../utils/result.dart";

abstract class UniverseRepository {
  Future<Result<List<Universe>>> getAll();
  Future<Result<Universe>> findById(UniverseId id);
  Future<Result<void>> save(Universe universe);
  Future<Result<void>> delete(UniverseId id);
}
