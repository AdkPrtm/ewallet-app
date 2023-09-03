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

class GetDataByUsername extends UserEvent {
  final String? username;

  const GetDataByUsername({this.username});
  @override
  List<Object> get props => [username!];
}
