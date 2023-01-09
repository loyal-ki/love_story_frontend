enum Flavors {
  DEVELOPMENT,
  STAGING,
  PRODUCTION,
}

class FlavorConfiguration {
  static Flavors appFlavor = Flavors.DEVELOPMENT;

  static String get name => appFlavor.name;

  static String get title {
    switch (appFlavor) {
      case Flavors.DEVELOPMENT:
        return "Love Story (DEV +)";
      case Flavors.STAGING:
        return "Love Story (STG +)";
      case Flavors.PRODUCTION:
        return "Love Story";
    }
  }
}
