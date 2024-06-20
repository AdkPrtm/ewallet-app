import 'package:equatable/equatable.dart';
import 'package:ewallet/core/service/notification_service.dart';
import 'package:ewallet/features/auth/domain/usecases/remove_credential_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ewallet/core/error/error.dart';
import 'package:ewallet/features/auth/domain/entities/entities.dart';
import 'package:ewallet/features/auth/domain/usecases/usecases.dart';
import 'package:ewallet/features/user/domain/domain.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final SignInUseCase _signInUseCase;
  final CheckDataUseCase _checkDataUseCase;
  final SignUpUseCase _signUpUseCase;
  final ValidationTokenUseCase _validationTokenUseCase;

  final SetCredentialUseCase _setCredentialUseCase;
  final GetCredentialUseCase _getCredentialUseCase;
  final RemoveCredentialUsecase _removeCredentialUsecase;

  AuthBloc(
    this._signInUseCase,
    this._checkDataUseCase,
    this._signUpUseCase,
    this._setCredentialUseCase,
    this._getCredentialUseCase,
    this._validationTokenUseCase,
    this._removeCredentialUsecase
  ) : super(AuthInitial()) {
    on<CheckDataExists>(onCheckDataProses);

    on<AuthLogin>(onLoginProses);

    on<AuthRegister>(onRegisterProses);

    on<ValidationTokenEvent>(onValidationProses);

    on<AuthLogout>(onLogoutProses);
  }

  Future<void> onValidationProses(
      ValidationTokenEvent event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    final token = await _getCredentialUseCase.call();
    if (token == '' || token == 'Something went wrong') {
      return emit(const AuthFailed('null token'));
    }
    final result = await _validationTokenUseCase.call(params: token);
    await result.fold(
      (l) async {
        if (l.message.contains('token: ')) {
          List<String> parts = l.message.split(' ');
          String token = parts[1];
          final result2 = await _validationTokenUseCase.call(params: token);
          await _setCredentialUseCase.call(params: token);
          await result2.fold(
            (l) async => null,
            (r) async => emit(AuthDone(r)),
          );
        }
        emit(AuthFailed(l.message));
      },
      (data) async {
        return emit(AuthDone(data));
      },
    );
  }

  Future<void> onCheckDataProses(
      CheckDataExists event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    final result = await _checkDataUseCase.call(params: event.checkDataParams);
    result.fold(
      (failure) {
        if (failure is ServerFailure) {
          emit(AuthFailed(failure.message));
        }

        if (failure is ConnectionFailure) {
          emit(AuthFailed(failure.message));
        }
      },
      (data) => emit(CheckDataSuccess(data)),
    );
  }

  Future<void> onLoginProses(AuthLogin event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    var tokenFcm = await PushNotifications.getDeviceToken();
    final result = await _signInUseCase.call(
        params: event.signInParams.copyWith(tokenFCM: tokenFcm));
    result.fold(
      (failure) {
        if (failure is ServerFailure) {
          emit(AuthFailed(failure.message));
        } else if (failure is ConnectionFailure) {
          emit(AuthFailed(failure.message));
        }
      },
      (data) async {
        emit(AuthDone(data));
        await _setCredentialUseCase.call(params: data.token!);
      },
    );
  }

  Future<void> onRegisterProses(
      AuthRegister event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    var tokenFcm = await PushNotifications.getDeviceToken();
    final result = await _signUpUseCase.call(
        params: event.signUpParams.copyWith(tokenFCM: tokenFcm));
    result.fold(
      (failure) {
        if (failure is ServerFailure) {
          emit(AuthFailed(failure.message));
        } else if (failure is ConnectionFailure) {
          emit(AuthFailed(failure.message));
        }
      },
      (data) async {
        emit(AuthDone(data));
        await _setCredentialUseCase.call(params: data.token!);
      },
    );
  }

  Future<void> onLogoutProses(AuthLogout event, Emitter<AuthState> emit) async{
    final result = await _removeCredentialUsecase.call();
    if(result) emit(AuthInitial());
  }
}
