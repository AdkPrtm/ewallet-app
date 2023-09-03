import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:template_clean_architecture/feature/user/domain/domain.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UpdateDataUserUsecase _updateDataUserUsecase;
  final GetUserByUsernameUsecase _getUserByUsernameUsecase;
  final ChangePinUsecase _changePinUsecase;

  UserBloc(
    this._updateDataUserUsecase,
    this._getUserByUsernameUsecase,
    this._changePinUsecase,
  ) : super(UserInitial()) {
    on<UpdateDataProfileEvent>(onUpdateProfileUserProses);

    on<GetDataByUsername>(onGetDataUsernameProses);

    on<ChangePinUserEvent>(onChangePinUserProses);
  }

  Future<void> onUpdateProfileUserProses(
      UpdateDataProfileEvent event, Emitter<UserState> emit) async {
    emit(UserLoading());
    final result = await _updateDataUserUsecase.call(
        params: event.updateProfileUserParams);
    result.fold(
      (l) => emit(UserFailed(l.message)),
      (data) {
        event.userEntity!.copyWith(
          username: event.updateProfileUserParams!.username,
          name: event.updateProfileUserParams!.name,
          email: event.updateProfileUserParams!.email,
        );
        emit(UpdateProfileSuccess());
      },
    );
  }

  Future<void> onGetDataUsernameProses(
      GetDataByUsername event, Emitter<UserState> emit) async {
    emit(UserLoading());
    final result = await _getUserByUsernameUsecase.call(params: event.username);
    result.fold(
      (l) => emit(UserFailed(l.message)),
      (data) => emit(ListDataByUsername(listData: data.data)),
    );
  }

  Future<void> onChangePinUserProses(
      ChangePinUserEvent event, Emitter<UserState> emit) async {
    emit(UserLoading());
    final result = await _changePinUsecase.call(params: event.updatePinParams);
    result.fold(
      (l) => emit(UserFailed(l.message)),
      (data) {
        event.userEntity!.copyWith(
          pin: event.updatePinParams!.newPin.toString(),
        );
        print(event.updatePinParams!.newPin);
        print(event.userEntity);
        emit(UpdateProfileSuccess());
      },
    );
  }
}
