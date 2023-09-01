part of 'auth_bloc.dart';

sealed class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class AuthLogin extends AuthEvent {
  final SignInParams signInParams;
  const AuthLogin(this.signInParams);
}

class CheckDataExists extends AuthEvent {
  final CheckDataParams checkDataParams;

  const CheckDataExists(this.checkDataParams);
}
