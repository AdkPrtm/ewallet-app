part of 'user_bloc.dart';

sealed class UserEvent extends Equatable {
  const UserEvent();

  @override
  List<Object> get props => [];
}

class GetCurrentUserEvent extends UserEvent {}

class UpdateDataProfileEvent extends UserEvent {
  final UpdateProfileUserParams? updateProfileUserParams;
  final UserEntity? userEntity;

  const UpdateDataProfileEvent({this.updateProfileUserParams, this.userEntity});
  @override
  List<Object> get props => [updateProfileUserParams!, userEntity!];
}

class ChangePinUserEvent extends UserEvent {
  final UpdatePinParams? updatePinParams;

  const ChangePinUserEvent({this.updatePinParams});
  @override
  List<Object> get props => [updatePinParams!];
}
