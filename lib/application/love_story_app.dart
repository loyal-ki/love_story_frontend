import "package:flutter/foundation.dart";
import "package:flutter/material.dart";

import "package:love_story_frontend/configuration/flavors.dart";
import "package:love_story_frontend/pages/my_home_page.dart";

class LoveStoryApp extends StatelessWidget {
  const LoveStoryApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: FlavorConfiguration.title,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const _FlavorBanner(
          show: kDebugMode,
          child: MyHomePage(),
        ),
      );
}

class _FlavorBanner extends StatelessWidget {
  const _FlavorBanner({
    required this.child,
    this.show = true,
  });

  final Widget child;
  final bool show;

  @override
  Widget build(BuildContext context) => show
      ? Banner(
          location: BannerLocation.topStart,
          message: FlavorConfiguration.name,
          color: Colors.green.withOpacity(0.6),
          textStyle: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 12,
            letterSpacing: 1,
          ),
          textDirection: TextDirection.ltr,
          child: child,
        )
      : Container(
          child: child,
        );
}
