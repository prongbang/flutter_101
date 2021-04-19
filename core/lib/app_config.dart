class AppConfig {
  String applicationName;
  String buildFlavor;
  String baseURL;

  AppConfig({this.applicationName, this.buildFlavor, this.baseURL});

  static String appName = 'Flutter101';
  static String productionFlavor = "production";
  static String uatFlavor = "uat";
  static String developFlavor = "develop";
  static String mockFlavor = "mock";
  static String androidApplicationId = "com.krungsri.flutter101";
  static String iOSApplicationId = "flutter-101/id1234567890";
}

/// Used:
/// String display = Flavor.production.display;
///
enum Flavor { production, uat, develop, mock }

extension FlavorExtension on Flavor {
  String get display {
    switch (this) {
      case Flavor.production:
        return 'Production';
      case Flavor.uat:
        return 'UAT';
      case Flavor.develop:
        return 'Develop';
      case Flavor.mock:
        return 'Mock';
      default:
        return 'other';
    }
  }
}
