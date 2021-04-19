import 'package:core/core/usecase.dart';
import 'package:datastore/data/datastore_repository.dart';
import 'package:datastore/domain/datastore.dart';

abstract class SaveToStoreUseCase<R> extends UseCase<DataStore, void> {}

class DefaultSaveToStoreUseCase implements SaveToStoreUseCase {
  final DataStoreRepository dataStoreRepository;

  DefaultSaveToStoreUseCase(this.dataStoreRepository);

  @override
  Future<void> execute(DataStore request) {
    return dataStoreRepository.write(request.key, request.value);
  }
}
