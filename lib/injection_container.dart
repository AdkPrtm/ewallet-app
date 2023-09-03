import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:template_clean_architecture/feature/auth/data/data.dart';
import 'package:template_clean_architecture/feature/auth/domain/domain.dart';
import 'package:template_clean_architecture/feature/auth/presentation/bloc/auth_bloc.dart';
import 'package:template_clean_architecture/feature/user/data/data.dart';
import 'package:template_clean_architecture/feature/user/domain/domain.dart';
import 'package:template_clean_architecture/feature/user/presentation/bloc/user_bloc.dart';

final sl = GetIt.instance;

void setupLocator() {
  //BLOC
  sl.registerFactory(() => AuthBloc(sl(), sl(), sl(), sl(), sl(), sl()));
  sl.registerFactory(() => UserBloc(sl(), sl(), sl()));

  /* USECASE */

  //AUTH USECASE
  sl.registerLazySingleton(() => SignInUseCase(sl()));
  sl.registerLazySingleton(() => SignUpUseCase(sl()));
  sl.registerLazySingleton(() => CheckDataUseCase(sl()));
  sl.registerLazySingleton(() => GetCurrentUserUseCase(sl()));

  sl.registerLazySingleton(() => SetCredentialUseCase(sl()));
  sl.registerLazySingleton(() => GetCredentialUseCase(sl()));

  //USER USECASE
  sl.registerLazySingleton(() => UpdateDataUserUsecase(sl()));
  sl.registerLazySingleton(() => GetUserByUsernameUsecase(sl()));
  sl.registerLazySingleton(() => ChangePinUsecase(sl()));

  /* REPOSITORY */

  //AUTH REPOSITORY
  sl.registerLazySingleton<AuthRepository>(
      () => AuthRepositoryImpl(sl(), sl()));

  //USER REPOSITORY
  sl.registerLazySingleton<UserRepository>(
      () => UserRepositoryImpl(sl(), sl()));

  /* DATA SOURCE */

  //AUTH DATASOURCE
  sl.registerLazySingleton(() => AuthRemoteService(sl()));
  sl.registerLazySingleton(() => AuthLocalService());

  //USER DATASOURCE
  sl.registerLazySingleton(() => UserRemoteService(sl()));

  /* EXTERNAL */
  sl.registerLazySingleton(() => Dio());
}
