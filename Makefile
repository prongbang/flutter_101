# make create_feature name=login
create_feature:
	flutter create --template=package ./features/$(name)

# make create_widget name=wecmaterial
create_widget:
	flutter create --template=package ./widgets/$(name)

# make create_commons name=crypto
create_commons:
	flutter create --template=package ./commons/$(name)

cer_to_ctr:
	openssl x509 -inform DER -in servicekrungsrigroup.com.cer -out servicekrungsrigroup.com-2020.crts

# make pod-update
pod-update:
	pod repo update
	pod install --repo-update

# make fix_iosbuild_error
fix_iosbuild_error:
	rm -rf ./ios/Podfile.lock
	rm -rf ~/.pub-cache/hosted/pub.dartlang.org/
	flutter clean
	flutter pub get
	pod repo update

flutter_clear_cache:
	rm -rf ~/.pub-cache/hosted/pub.dartlang.org/

flutter_upgrade:
	flutter upgrade

flutter_downgrade:
	flutter downgrade

flutter_pub_deps:
	flutter pub get
	flutter pub deps -- --style=compact

# make genicon
genicon:
	flutter pub get
	flutter pub run flutter_launcher_icons:main

# make apk
apk:
	#flutter build apk --target-platform android-arm,android-arm64,android-x64 --split-per-abi
	flutter build apk

apk-debug:
	flutter build apk -t lib/main.dart --flavor production --debug

apk-release:
	flutter build apk -t lib/main.dart --flavor production --release

# make apk-obfuscate
apk-obfuscate:
	flutter build apk --obfuscate --split-debug-info=./

install-apk:
	adb install build/app/outputs/flutter-apk/app-release.apk

install-prod:
	adb install build/app/outputs/flutter-apk/app-production-release.apk

install-mock:
	adb install build/app/outputs/flutter-apk/app-mock-release.apk

# make bundle
bundle:
	#flutter build appbundle --target-platform android-arm,android-arm64,android-x64
	flutter build appbundle

# make bundle-obfuscate
bundle-obfuscate:
	flutter build appbundle --obfuscate --split-debug-info=./

# make test_coverage
# brew install lcov
test_coverage:
	flutter test --coverage
	genhtml coverage/lcov.info -o coverage/html
