# flutter_101

Flutter 101 application.

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
