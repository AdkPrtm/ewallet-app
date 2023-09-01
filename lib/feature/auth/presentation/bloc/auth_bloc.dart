import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:template_clean_architecture/core/error/error.dart';
import 'package:template_clean_architecture/feature/auth/domain/entities/entities.dart';
import 'package:template_clean_architecture/feature/auth/domain/usecases/get_credential_usecase.dart';
import 'package:template_clean_architecture/feature/auth/domain/usecases/get_current_user_usecase.dart';
import 'package:template_clean_architecture/feature/auth/domain/usecases/usecases.dart';
import 'package:template_clean_architecture/feature/user/domain/domain.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final SignInUseCase _signInUseCase;
  final CheckDataUseCase _checkDataUseCase;
  final SignUpUseCase _signUpUseCase;
  final GetCurrentUserUseCase _getCurrentUserUseCase;

  final SetCredentialUseCase _setCredentialUseCase;
  final GetCredentialUseCase _getCredentialUseCase;

  AuthBloc(
    this._signInUseCase,
    this._checkDataUseCase,
    this._signUpUseCase,
    this._setCredentialUseCase,
    this._getCredentialUseCase,
    this._getCurrentUserUseCase,
  ) : super(AuthInitial()) {
    on<CheckDataExists>(onCheckDataProses);

    on<AuthLogin>(onLoginProses);

    on<AuthRegister>(onRegisterProses);

    on<GetCurrentUser>(onGetCurrentUserProses);
  }

  Future<void> onCheckDataProses(
      CheckDataExists event, Emitter<AuthState> emit) async {
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
    final result = await _signInUseCase.call(params: event.signInParams);
    result.fold(
      (failure) {
        if (failure is ServerFailure) {
          emit(AuthFailed(failure.message ?? ""));
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
    final result = await _signUpUseCase.call(params: event.signUpParams);

    result.fold(
      (failure) {
        if (failure is ServerFailure) {
          emit(AuthFailed(failure.message ?? ""));
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

  Future<void> onGetCurrentUserProses(
      GetCurrentUser event, Emitter<AuthState> emit) async {
    final token = await _getCredentialUseCase.call();
    if (token != '') {
      final result = await _getCurrentUserUseCase.call(params: token);
      result.fold(
        (l) => emit(AuthFailed(l.message)),
        (data) => emit(AuthDone(data)),
      );
    } else {
      emit(const AuthFailed('Something went wrong'));
    }
  }
}
