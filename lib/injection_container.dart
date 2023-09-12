import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:template_clean_architecture/features/auth/auth.dart';
import 'package:template_clean_architecture/features/product/product.dart';
import 'package:template_clean_architecture/features/tips/tips.dart';
import 'package:template_clean_architecture/features/topup/topup.dart';
import 'package:template_clean_architecture/features/transaction/transaction.dart';
import 'package:template_clean_architecture/features/transfer/transfer.dart';
import 'package:template_clean_architecture/features/user/user.dart';

final sl = GetIt.instance;

void setupLocator() {
  //BLOC
  sl.registerFactory(() => AuthBloc(sl(), sl(), sl(), sl(), sl(), sl(), sl()));
  sl.registerFactory(() => UserBloc(sl(), sl(), sl()));
  sl.registerFactory(() => TopupBloc(sl(), sl()));
  sl.registerFactory(() => TransferBloc(sl(), sl(), sl()));
  sl.registerFactory(() => TipsBloc(sl()));
  sl.registerFactory(() => TransactionBloc(sl()));
  sl.registerFactory(() => ProductBloc(sl(), sl()));

  /* USECASE */

  //AUTH USECASE
  sl.registerLazySingleton(() => SignInUseCase(sl()));
  sl.registerLazySingleton(() => SignUpUseCase(sl()));
  sl.registerLazySingleton(() => CheckDataUseCase(sl()));
  sl.registerLazySingleton(() => ValidationTokenUseCase(sl()));
  sl.registerLazySingleton(() => LogoutUserUseCase(sl()));

  sl.registerLazySingleton(() => SetCredentialUseCase(sl()));
  sl.registerLazySingleton(() => GetCredentialUseCase(sl()));

  //USER USECASE
  sl.registerLazySingleton(() => UpdateDataUserUsecase(sl()));
  sl.registerLazySingleton(() => ChangePinUsecase(sl()));
  sl.registerLazySingleton(() => GetCurrentUserUseCase(sl()));

  //TOPUP USECASE
  sl.registerLazySingleton(() => TopUpUseCase(sl()));
  sl.registerLazySingleton(() => GetPaymentMethodUseCase(sl()));

  //TRANSFER USECASE
  sl.registerLazySingleton(() => TransferUseCase(sl()));
  sl.registerLazySingleton(() => TransferHistoryUseCase(sl()));
  sl.registerLazySingleton(() => GetUserByUsernameUsecase(sl()));

  //TIPS USECASE
  sl.registerLazySingleton(() => GetTipsUseCase(sl()));

  //TRANSACTION USECASE
  sl.registerLazySingleton(() => GetTransactionHistoryUseCase(sl()));

  //PRODUCT (DATA PLANS) USECASE
  sl.registerLazySingleton(() => GetDataPlansUseCase(sl()));
  sl.registerLazySingleton(() => BuyDataPlansUseCase(sl()));

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

  //TRANSACTION REPOSITORY
  sl.registerLazySingleton<TransactionRepository>(
      () => TransactionRespositoryImpl(sl(), sl()));

  sl.registerLazySingleton<DataPlansRepository>(
      () => DataPlansRepositoryImpl(sl(), sl()));

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

  //TRANSACTION DATASOURCE
  sl.registerLazySingleton(() => TransactionRemoteService(sl()));

  //PRODUCT (DATAPLANS) DATASOURCE
  sl.registerLazySingleton(() => DataPlansRemoteSevice(sl()));

  /* EXTERNAL */
  sl.registerLazySingleton(() => Dio());
}
