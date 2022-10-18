import 'package:get_it/get_it.dart';
import 'package:posts/src/core/features.dart';


void initializeDi(GetIt getIt) async {
  initializeDataSources(getIt); print("initializeDataSources: OK");
  initializeRepositories(getIt); print("initializeRepositories: OK");
  initializeUseCases(getIt); print("initializeUseCases: OK");
  initializeControllers(getIt); print("initializeControllers: OK");
}

void initializeDataSources(GetIt getIt) {
  getIt.registerFactory<GetNewsDatasource>(() => GetNewsDatasourceImpl());
  getIt.registerFactory<LoginDatasource>(() => LoginDatasourceImpl());
  getIt.registerFactory<RegisterDatasource>(() => RegisterDatasourceImpl());
  getIt.registerFactory<UserPostDatasource>(() => UserPostDatasourceImpl());
  getIt.registerFactory<GetPostsDatasource>(() => GetPostsDatasourceImpl());
}

void initializeRepositories(GetIt getIt) {
  getIt.registerFactory<GetNewsRepository>(() => GetNewsRepositoryImpl(getIt()));
  getIt.registerFactory<LoginRepository>(() => LoginRepositoryImpl(getIt()));
  getIt.registerFactory<RegisterRepository>(() => RegisterRepositoryImpl(getIt()));
  getIt.registerFactory<UserPostRepository>(() => UserPostRepositoryImpl(getIt()));
  getIt.registerFactory<GetPostsRepository>(() => GetPostsRepositoryImpl(getIt()));
}

void initializeUseCases(GetIt getIt) {
  getIt.registerFactory<GetNewsUsecase>(() => GetNewsUsecaseImpl(getIt()));
  getIt.registerFactory<LoginUsecase>(() => LoginUsecaseImpl(getIt()));
  getIt.registerFactory<RegisterUsecase>(() => RegisterUsecaseImpl(getIt()));
  getIt.registerFactory<UserPostUsecase>(() => UserPostUsecaseImpl(getIt()));
  getIt.registerFactory<GetPostsUsecase>(() => GetPostsUsecaseImpl(getIt()));
}

void initializeControllers(GetIt getIt) {
  getIt.registerLazySingleton(() => NewsController(getIt()));
  getIt.registerLazySingleton(() => LoginController(getIt()));
  getIt.registerLazySingleton(() => RegisterController(getIt()));
  getIt.registerLazySingleton(() => UserPostController(getIt(), ));
  getIt.registerLazySingleton(() => PostsController(getIt(),));
  getIt.registerLazySingleton(() => HomeController());
}