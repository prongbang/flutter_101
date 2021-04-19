import 'package:datastore/data/datastore_datasource.dart';
import 'package:datastore/data/datastore_local_datasource.dart';
import 'package:datastore/data/datastore_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:uuid/uuid.dart';

class DataStoreLocator {
  static setup() {
    GetIt.I.registerLazySingleton(() => Uuid());
    GetIt.I.registerLazySingleton(() => GetStorage());
    GetIt.I.registerLazySingleton<DataStoreDataSource>(
        () => DataStoreLocalDataSource(GetIt.I.get()));
    GetIt.I.registerLazySingleton<DataStoreRepository>(
        () => CacheDataStoreRepository(GetIt.I.get()));
  }
}
