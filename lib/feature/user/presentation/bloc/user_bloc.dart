import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:template_clean_architecture/feature/auth/domain/domain.dart';
import 'package:template_clean_architecture/feature/user/domain/domain.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final GetCredentialUseCase _getCredentialUseCase;
  final UpdateDataUserUsecase _updateDataUserUsecase;

  UserBloc(
    this._getCredentialUseCase,
    this._updateDataUserUsecase,
  ) : super(UserInitial()) {
    on<UpdateDataProfileEvent>(onUpdateProfileUserProses);
  }

  Future<void> onUpdateProfileUserProses(
      UpdateDataProfileEvent event, Emitter<UserState> emit) async {
    emit(UserLoading());
    final result = await _updateDataUserUsecase.call(
        params: event.updateProfileUserParams);
    result.fold(
      (l) => emit(UserFailed(l.message)),
      (data) {
        print(event.userEntity);
        event.userEntity!.copyWith(
          username: event.updateProfileUserParams!.username,
          name: event.updateProfileUserParams!.name,
          email: event.updateProfileUserParams!.email,
        );
        emit(UpdateProfileSuccess());
      },
    );
  }
}
