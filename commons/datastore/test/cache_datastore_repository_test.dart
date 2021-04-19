import 'dart:async';

import 'package:datastore/data/datastore_datasource.dart';
import 'package:datastore/data/datastore_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

// Mock class
class MockDataStoreDataSource extends Mock implements DataStoreDataSource {}

void main() {
  DataStoreDataSource dataSource;
  DataStoreRepository repository;

  setUp(() {
    dataSource = MockDataStoreDataSource();
    repository = CacheDataStoreRepository(dataSource);
  });

  test('Should not error When write success', () async {
    // Given
    final key = 'testKey';
    final value = 'Flutter101';
    when(dataSource.write(key, value))
        .thenAnswer((realInvocation) => Future.value());

    // When
    await repository.write(key, value);

    // Then
    verify(dataSource.write(key, value));
  });

  test('Should has result When get by key success', () async {
    // Given
    final key = 'testKey';
    final value = 'Flutter101';
    when(dataSource.read(key)).thenReturn(value);

    // When
    final actual = await repository.read(key);

    // Then
    expect(actual, value);
  });
}
