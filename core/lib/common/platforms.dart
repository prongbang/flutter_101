import 'dart:io';

class Platforms {
  static final String android = 'android';
  static final String ios = 'ios';
  static final String fuchsia = 'fuchsia';
  static final String linux = 'linux';
  static final String macOS = 'macOS';
  static final String windows = 'windows';
  static final String unknown = 'unknown';

  static String get me => Platform.isAndroid
      ? android
      : Platform.isIOS
          ? ios
          : Platform.isFuchsia
              ? fuchsia
              : Platform.isLinux
                  ? linux
                  : Platform.isMacOS
                      ? macOS
                      : Platform.isWindows
                          ? windows
                          : unknown;
}
