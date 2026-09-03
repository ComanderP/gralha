/// Registration of the licences shown by `showLicensePage`.
library;

import "package:flutter/foundation.dart";
import "package:flutter/services.dart";

void registerAppLicence() {
  LicenseRegistry.addLicense(() async* {
    final text = await rootBundle.loadString("LICENSE.md");
    yield LicenseEntryWithLineBreaks(const ["Gralha"], text);
  });
}
