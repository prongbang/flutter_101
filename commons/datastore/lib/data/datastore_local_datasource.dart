import 'package:datastore/data/datastore_datasource.dart';
import 'package:flutter/foundation.dart';
import 'package:get_storage/get_storage.dart';

class DataStoreLocalDataSource implements DataStoreDataSource {
  final GetStorage getStorage;

  DataStoreLocalDataSource(this.getStorage);

  @override
  Future<void> erase() async => getStorage.erase();

  @override
  T getKeys<T>() => getStorage.getKeys<T>();

  @override
  T getValues<T>() => getStorage.getValues<T>();

  @override
  bool hasData(String key) => getStorage.hasData(key);

  @override
  VoidCallback listen(VoidCallback value) => getStorage.listen(value);

  @override
  VoidCallback listenKey(String key, Function(dynamic) callback) =>
      getStorage.listenKey(key, callback);

  @override
  T read<T>(String key) => getStorage.read<T>(key);

  @override
  Future<void> remove(String key) async => getStorage.remove(key);

  @override
  Future<void> write(String key, value) async => getStorage.write(key, value);

  @override
  Future<void> writeIfNull(String key, value) async =>
      getStorage.writeIfNull(key, value);
}
