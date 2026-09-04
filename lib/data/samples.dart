import "../domain/models/ids.dart";
import "../domain/models/universe/universe.dart";

final DateTime sampleTimestamp = DateTime.utc(2026);

Universe sampleUniverse(String id, String name) => Universe(
  id: UniverseId(id),
  name: name,
  createdAt: sampleTimestamp,
  updatedAt: sampleTimestamp,
);

final List<Universe> sampleUniverses = [
  sampleUniverse("1", "Cutieverse"),
  sampleUniverse("2", "Lands of Tomorrow"),
  sampleUniverse("3", "Mindscape"),
];
