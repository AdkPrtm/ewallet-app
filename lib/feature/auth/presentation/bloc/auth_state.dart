part of 'auth_bloc.dart';

sealed class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

final class AuthInitial extends AuthState {}

final class AuthLoading extends AuthState {}

class CheckDataSuccess extends AuthState {
  final CheckDataEntity checkDataEntity;

  const CheckDataSuccess(this.checkDataEntity);
  @override
  List<Object> get props => [checkDataEntity];
}

class AuthDone extends AuthState {
  final UserEntity userEntity;
  const AuthDone(this.userEntity);

  @override
  List<Object> get props => [userEntity];
}

class AuthFailed extends AuthState {
  final String message;

  const AuthFailed(this.message);
  @override
  List<Object> get props => [message];
}

