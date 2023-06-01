import 'package:get_it/get_it.dart';
import '../dataSource/local/local_data_source.dart';
import '../dataSource/remote/remote_data_source.dart';
import '../repository/user_repository.dart';

final getIt = GetIt.instance;

initModule() {
  getIt.registerLazySingleton<LocalDataSource>(() => LocalDataSource());
  getIt.registerLazySingleton<RemoteDataSource>(() => RemoteDataSource());
  getIt.registerLazySingleton<UserRepository>(
      () => UserRepository(localSource: getIt(), remoteSource: getIt()));
}