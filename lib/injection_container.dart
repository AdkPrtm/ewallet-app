import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:template_clean_architecture/features/auth/data/data.dart';
import 'package:template_clean_architecture/features/auth/domain/domain.dart';
import 'package:template_clean_architecture/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:template_clean_architecture/features/tips/data/datasources/remote/remote.dart';
import 'package:template_clean_architecture/features/tips/data/repositories/repositories.dart';
import 'package:template_clean_architecture/features/tips/domain/repositories/repositories.dart';
import 'package:template_clean_architecture/features/tips/domain/usecases/usecase.dart';
import 'package:template_clean_architecture/features/tips/presentation/bloc/tips_bloc.dart';
import 'package:template_clean_architecture/features/topup/data/datasources/datasource.dart';
import 'package:template_clean_architecture/features/topup/data/repositories/repositories.dart';
import 'package:template_clean_architecture/features/topup/domain/repositories/repositories.dart';
import 'package:template_clean_architecture/features/topup/domain/usecases/get_payment_method.dart';
import 'package:template_clean_architecture/features/topup/domain/usecases/usecases.dart';
import 'package:template_clean_architecture/features/topup/presentation/bloc/topup_bloc.dart';
import 'package:template_clean_architecture/features/transfer/data/datasources/remote/remote.dart';
import 'package:template_clean_architecture/features/transfer/data/repositories/repositories.dart';
import 'package:template_clean_architecture/features/transfer/domain/repositories/repositories.dart';
import 'package:template_clean_architecture/features/transfer/domain/usecases/usecases.dart';
import 'package:template_clean_architecture/features/transfer/presentation/bloc/transfer_bloc.dart';
import 'package:template_clean_architecture/features/user/data/data.dart';
import 'package:template_clean_architecture/features/user/domain/domain.dart';
import 'package:template_clean_architecture/features/user/presentation/bloc/user_bloc.dart';

final sl = GetIt.instance;

void setupLocator() {
  //BLOC
  sl.registerFactory(() => AuthBloc(sl(), sl(), sl(), sl(), sl(), sl()));
  sl.registerFactory(() => UserBloc(sl(), sl(), sl(), sl()));
  sl.registerFactory(() => TopupBloc(sl(), sl()));
  sl.registerFactory(() => TransferBloc(sl(), sl()));
  sl.registerFactory(() => TipsBloc(sl()));

  /* USECASE */

  //AUTH USECASE
  sl.registerLazySingleton(() => SignInUseCase(sl()));
  sl.registerLazySingleton(() => SignUpUseCase(sl()));
  sl.registerLazySingleton(() => CheckDataUseCase(sl()));
  sl.registerLazySingleton(() => ValidationTokenUseCase(sl()));

  sl.registerLazySingleton(() => SetCredentialUseCase(sl()));
  sl.registerLazySingleton(() => GetCredentialUseCase(sl()));

  //USER USECASE
  sl.registerLazySingleton(() => UpdateDataUserUsecase(sl()));
  sl.registerLazySingleton(() => GetUserByUsernameUsecase(sl()));
  sl.registerLazySingleton(() => ChangePinUsecase(sl()));
  sl.registerLazySingleton(() => GetCurrentUserUseCase(sl()));

  //TOPUP USECASE
  sl.registerLazySingleton(() => TopUpUseCase(sl()));
  sl.registerLazySingleton(() => GetPaymentMethodUseCase(sl()));

  //TRANSFER USECASE
  sl.registerLazySingleton(() => TransferUseCase(sl()));
  sl.registerLazySingleton(() => TransferHistoryUseCase(sl()));

  //TIPS USECASE
  sl.registerLazySingleton(() => GetTipsUseCase(sl()));

  /* REPOSITORY */

  //AUTH REPOSITORY
  sl.registerLazySingleton<AuthRepository>(
      () => AuthRepositoryImpl(sl(), sl()));

  //USER REPOSITORY
  sl.registerLazySingleton<UserRepository>(
      () => UserRepositoryImpl(sl(), sl()));

  //TOPUP REPOSITORY
  sl.registerLazySingleton<TopUpRespository>(
      () => TopUpRepositoryImpl(sl(), sl()));

  //TRANSFER REPOSITORY
  sl.registerLazySingleton<TransferRepository>(
      () => TransferRepositoryImpl(sl(), sl()));

  //TIPS REPOSITORY
  sl.registerLazySingleton<TipsRepository>(
      () => TipsRepositoryImpl(sl(), sl()));

  /* DATA SOURCE */

  //AUTH DATASOURCE
  sl.registerLazySingleton(() => AuthRemoteService(sl()));
  sl.registerLazySingleton(() => AuthLocalService());

  //USER DATASOURCE
  sl.registerLazySingleton(() => UserRemoteService(sl()));

  //TOPUP DATASOURCE
  sl.registerLazySingleton(() => TopupRemoteService(sl()));

  //TRANSFER DATASOURCE
  sl.registerLazySingleton(() => TransferRemoteService(sl()));

  //TIPS DATASOURCE
  sl.registerLazySingleton(() => TipsServiceRemote(sl()));

  /* EXTERNAL */
  sl.registerLazySingleton(() => Dio());
}
