import "package:flutter/material.dart";
import "package:love_story_frontend/application/love_story_app.dart";
import "package:love_story_frontend/configuration/flavors.dart";

void main() {
  FlavorConfiguration.appFlavor = Flavors.PRODUCTION;
  runApp(const LoveStoryApp());
}
