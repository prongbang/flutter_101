#!/bin/sh
# Flutter test coverage will not report untested files #27997
# https://github.com/flutter/flutter/issues/27997
# https://medium.com/@nocnoc/combined-code-coverage-for-flutter-and-dart-237b9563ecf8

outputFile="$(pwd)/test/required_test.dart"
packageName="$(cat pubspec.yaml| grep '^name: ' | awk '{print $2}')"

if [ "$packageName" = "" ]; then
    echo "Run $0 from the root of your Dart/Flutter project"
    exit 1
fi

# remove old output file
rm -rf outputFile

echo "/// Helper to test coverage for all project files\n" > "$outputFile"
echo "// ignore_for_file: unused_import" >> "$outputFile"
# exclude and include file
find lib \
-not -path '*/widget/*' \
-not -path '*/widgets/*' \
-not -path '*/presentation/*' \
-not -name '*_state.dart' \
-not -name '*_event.dart' \
-not -name '*_arguments.dart' \
-not -name '*_assets.dart' \
-not -name '*_theme.dart' \
-not -name '*_route.dart' \
-not -name '*_router.dart' \
-not -name '*_locator.dart' \
-not -name '*_widget.dart' \
-not -name '*.g.dart' \
-not -name 'analytics.dart' \
-and -name '*.dart' \
| grep -v 'generated_plugin_registrant' | awk -v package=$packageName '{gsub("^lib", "", $1); printf("import '\''package:%s%s'\'';\n", package, $1);}' >> "$outputFile"
echo "\nvoid main() {}" >> "$outputFile"