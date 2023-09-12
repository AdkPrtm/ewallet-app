part of 'auth_bloc.dart';

sealed class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

final class AuthInitial extends AuthState {}

final class AuthLoading extends AuthState {}

class CheckDataSuccess extends AuthState {
  final DataCheckDataEntity dataCheckDataEntity;

  const CheckDataSuccess(this.dataCheckDataEntity);
  @override
  List<Object> get props => [dataCheckDataEntity];
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

