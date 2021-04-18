# flutter_101

Flutter 101 application.

- Slide: https://docs.google.com/presentation/d/1pXJIa3Pdygfw8GzQtKoNYpAsY5a2-1KTa8vzgN0sQdo?usp=sharing

### Enable by platforms

```bash
$ flutter config --enable-web
$ flutter config --enable-windows-desktop
$ flutter config --enable-macos-desktop
$ flutter config --enable-linux-desktop
```

### Add platforms support to an existing app

```bash
$ cd flutter_101
$ flutter create --platforms=web,windows,macos,linux .
```

### List the devices

```bash
$ flutter devices
```

### Create Feature Package

```
make create_feature name=login
```

Output:

```
flutter_101
└── features
    └── login
        ├── CHANGELOG.md
        ├── LICENSE
        ├── README.md
        ├── lib
        │   └── login.dart
        ├── login.iml
        ├── pubspec.lock
        ├── pubspec.yaml
        └── test
            └── login_test.dart
```

### Create Widgets Package

```
make create_widget name=wecmaterial
```

Output:

```
flutter_101
└── widgets
    └── wecmaterial
        ├── CHANGELOG.md
        ├── LICENSE
        ├── README.md
        ├── lib
        │   └── wecmaterial.dart
        ├── wecmaterial.iml
        ├── pubspec.lock
        ├── pubspec.yaml
        └── test
            └── wecmaterial_test.dart
```

### Using Local Package

- flutter_101/pubspec.yaml

```yml
dependencies:
  flutter:
    sdk: flutter

  # locals package
  wecmaterial:
    path: ./widgets/wecmaterial
  login:
    path: ./features/login
```

- flutter_101/features/pubspec.yaml

```yml
dependencies:
  flutter:
    sdk: flutter

  # locals package
  wecmaterial:
    path: ../../widgets/wecmaterial
```
