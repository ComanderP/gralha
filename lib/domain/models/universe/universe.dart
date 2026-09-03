import "package:freezed_annotation/freezed_annotation.dart";

import "../ids.dart";

part "universe.freezed.dart";

@freezed
class const Universe({
  @override required final UniverseId id,
  @override required final String name,
  @override final String? description,
  @override required final DateTime createdAt,
  @override required final DateTime updatedAt,
}) with _$Universe;
