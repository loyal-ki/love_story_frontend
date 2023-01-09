import "package:flutter/material.dart";
import "package:love_story_frontend/application/love_story_app.dart";
import "package:love_story_frontend/configuration/flavors.dart";
import "package:love_story_frontend/initial_love_story.dart";

void main() {
  FlavorConfiguration.appFlavor = Flavors.DEVELOPMENT;
  initialLoveStory(() => runApp(const LoveStoryApp()));
}
