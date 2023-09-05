import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:template_clean_architecture/core/error/error.dart';
import 'package:template_clean_architecture/features/auth/domain/entities/entities.dart';
import 'package:template_clean_architecture/features/auth/domain/usecases/usecases.dart';
import 'package:template_clean_architecture/features/user/domain/domain.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final SignInUseCase _signInUseCase;
  final CheckDataUseCase _checkDataUseCase;
  final SignUpUseCase _signUpUseCase;
  final ValidationTokenUseCase _validationTokenUseCase;

  final SetCredentialUseCase _setCredentialUseCase;
  final GetCredentialUseCase _getCredentialUseCase;

  AuthBloc(
    this._signInUseCase,
    this._checkDataUseCase,
    this._signUpUseCase,
    this._setCredentialUseCase,
    this._getCredentialUseCase,
    this._validationTokenUseCase,
  ) : super(AuthInitial()) {
    on<CheckDataExists>(onCheckDataProses);

    on<AuthLogin>(onLoginProses);

    on<AuthRegister>(onRegisterProses);

    on<ValidationTokenEvent>(onValidationProses);
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
      (l) async => emit(AuthFailed(l.message)),
      (data) async {
        if (data.email == null) {
          final result2 =
              await _validationTokenUseCase.call(params: data.token);
          await _setCredentialUseCase.call(params: data.token);
          await result2.fold(
            (l) async => null,
            (r) async => emit(AuthDone(data)),
          );
        }
        return emit(AuthDone(data));
      },
    );
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
    final result = await _signUpUseCase.call(params: event.signUpParams);

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
}
