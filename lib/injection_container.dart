import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:template_clean_architecture/feature/auth/data/data.dart';
import 'package:template_clean_architecture/feature/auth/domain/domain.dart';
import 'package:template_clean_architecture/feature/auth/presentation/bloc/auth_bloc.dart';

final sl = GetIt.instance;

void setupLocator() {
  //BLOC
  sl.registerFactory(() => AuthBloc(sl(), sl()));

  //USECASE
  sl.registerLazySingleton(() => SignInUseCase(sl()));
  sl.registerLazySingleton(() => CheckDataUseCase(sl()));

  //REPOSITORY
  sl.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(sl()));

  //DATA SOURCE
  sl.registerLazySingleton(() => AuthRemoteService(sl()));

  //EXTERNAL
  sl.registerLazySingleton(() => Dio());
}