import "dart:io";

import "package:checks/checks.dart";
import "package:flutter_test/flutter_test.dart";
import "package:gralha/config/theme.dart";

void main() {
  test("AppFonts.interFallback contains the correct package path", () {
    final pubspecContent = File("pubspec.yaml").readAsStringSync();
    final packageName = RegExp(
      r"^name:\s*(\S+)",
      multiLine: true,
    ).firstMatch(pubspecContent)!.group(1);

    check(AppFonts.interFallback).contains("packages/$packageName/${AppFonts.inter}");
  });
}
