import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ewallet/features/user/domain/domain.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UpdateDataUserUsecase _updateDataUserUsecase;
  final ChangePinUsecase _changePinUsecase;
  final GetCurrentUserUseCase _getCurrentUserUseCase;

  UserBloc(
    this._updateDataUserUsecase,
    this._changePinUsecase,
    this._getCurrentUserUseCase,
  ) : super(UserInitial()) {
    on<GetCurrentUserEvent>(onGetCurrentUserProses);

    on<UpdateDataProfileEvent>(onUpdateProfileUserProses);

    on<ChangePinUserEvent>(onChangePinUserProses);
  }

  Future<void> onGetCurrentUserProses(
      GetCurrentUserEvent event, Emitter<UserState> emit) async {
    final result = await _getCurrentUserUseCase.call();
    result.fold(
      (l) => emit(UserFailed(l.message)),
      (data) => emit(UserLoaded(data)),
    );
  }

  Future<void> onUpdateProfileUserProses(
      UpdateDataProfileEvent event, Emitter<UserState> emit) async {
    emit(UserLoading());
    final result = await _updateDataUserUsecase.call(
        params: event.updateProfileUserParams);
    result.fold(
      (l) => emit(UserFailed(l.message)),
      (data) => emit(UpdateProfileSuccess()),
    );
  }

  Future<void> onChangePinUserProses(
      ChangePinUserEvent event, Emitter<UserState> emit) async {
    emit(UserLoading());
    final result = await _changePinUsecase.call(params: event.updatePinParams);
    result.fold(
      (l) => emit(UserFailed(l.message)),
      (data) {
        return emit(UpdateProfileSuccess());
      },
    );
  }
}
