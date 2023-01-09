import "dart:async";

import "package:flutter/cupertino.dart";

Future<void> initialLoveStory(VoidCallback fn) async {
  await runZonedGuarded<Future<void>>(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      fn();
    },
    (exception, stack) {},
  );
}
