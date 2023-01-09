import "package:flutter/material.dart";
import "package:love_story_frontend/configuration/flavors.dart";

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(FlavorConfiguration.title),
        ),
        body: Center(
          child: Text(
            "Hello ${FlavorConfiguration.title}",
          ),
        ),
      );
}
