import 'package:datastore/data/datastore_datasource.dart';
import 'package:flutter/foundation.dart';

abstract class DataStoreRepository extends DataStoreDataSource {}

class CacheDataStoreRepository implements DataStoreRepository {
  final DataStoreDataSource dataStoreDataSource;

  CacheDataStoreRepository(this.dataStoreDataSource);

  @override
  Future<void> erase() async => dataStoreDataSource.erase();

  @override
  T getKeys<T>() => dataStoreDataSource.getKeys<T>();

  @override
  T getValues<T>() => dataStoreDataSource.getValues<T>();

  @override
  bool hasData(String key) => dataStoreDataSource.hasData(key);

  @override
  VoidCallback listen(VoidCallback value) => dataStoreDataSource.listen(value);

  @override
  VoidCallback listenKey(String key, Function(dynamic) callback) =>
      dataStoreDataSource.listenKey(key, callback);

  @override
  T read<T>(String key) => dataStoreDataSource.read<T>(key);

  @override
  Future<void> remove(String key) async => dataStoreDataSource.remove(key);

  @override
  Future<void> write(String key, value) async =>
      dataStoreDataSource.write(key, value);

  @override
  Future<void> writeIfNull(String key, value) async =>
      dataStoreDataSource.writeIfNull(key, value);
}
