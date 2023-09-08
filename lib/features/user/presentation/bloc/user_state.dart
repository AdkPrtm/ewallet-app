part of 'user_bloc.dart';

sealed class UserState extends Equatable {
  const UserState();

  @override
  List<Object> get props => [];
}

final class UserInitial extends UserState {}

final class UserLoading extends UserState {}

class UserLoaded extends UserState {
  final UserEntity userEntity;

  const UserLoaded(this.userEntity);
  @override
  List<Object> get props => [userEntity];
}

class UserFailed extends UserState {
  final String message;

  const UserFailed(this.message);
  @override
  List<Object> get props => [message];
}


class UpdateProfileSuccess extends UserState {}
