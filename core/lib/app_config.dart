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
