import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template_clean_architecture/features/user/domain/domain.dart';

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
    emit(UserLoading());
    final result = await _getCurrentUserUseCase.call();
    if (isClosed) return;
    result.fold(
      (l) => emit(UserFailed(l.message)),
      (data) => emit(UserLoaded(data.data)),
    );
  }

  Future<void> onUpdateProfileUserProses(
      UpdateDataProfileEvent event, Emitter<UserState> emit) async {
    emit(UserLoading());
    final result = await _updateDataUserUsecase.call(
        params: event.updateProfileUserParams);
    if (isClosed) return;
    result.fold(
      (l) => emit(UserFailed(l.message)),
      (data) => emit(UpdateProfileSuccess()),
    );
  }

  Future<void> onChangePinUserProses(
      ChangePinUserEvent event, Emitter<UserState> emit) async {
    emit(UserLoading());
    final result = await _changePinUsecase.call(params: event.updatePinParams);
    if (isClosed) return;
    result.fold(
      (l) => emit(UserFailed(l.message)),
      (data) {
        return emit(UpdateProfileSuccess());
      },
    );
  }
}
