part of 'auth_bloc.dart';

sealed class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class CheckDataExists extends AuthEvent {
  final CheckDataParams checkDataParams;

  const CheckDataExists(this.checkDataParams);
}

class AuthLogin extends AuthEvent {
  final SignInParams signInParams;
  const AuthLogin(this.signInParams);
}

class AuthRegister extends AuthEvent {
  final SignUpParams signUpParams;

  const AuthRegister(this.signUpParams);
}

class ValidationTokenEvent extends AuthEvent {}

class AuthLogout extends AuthEvent {}
