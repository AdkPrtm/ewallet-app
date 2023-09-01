import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:template_clean_architecture/core/error/error.dart';
import 'package:template_clean_architecture/feature/auth/domain/entities/entities.dart';
import 'package:template_clean_architecture/feature/auth/domain/usecases/usecases.dart';
import 'package:template_clean_architecture/feature/user/domain/domain.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final SignInUseCase _signInUseCase;
  final CheckDataUseCase _checkDataUseCase;

  AuthBloc(
    this._signInUseCase,
    this._checkDataUseCase,
  ) : super(AuthInitial()) {
    on<CheckDataExists>(onCheckDataProses);
    on<AuthLogin>(onLoginProses);
  }

  Future<void> onCheckDataProses(
      CheckDataExists event, Emitter<AuthState> emit) async {
    final result = await _checkDataUseCase.call(event.checkDataParams);
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
    final result = await _signInUseCase.call(event.signInParams);
    result.fold(
      (failure) {
        if (failure is ServerFailure) {
          emit(AuthFailed(failure.message ?? ""));
        } else if (failure is ConnectionFailure) {
          emit(AuthFailed(failure.message));
        }
      },
      (data) => emit(AuthDone(data)),
    );
  }
}
