part of 'auth_bloc.dart';

enum AuthMode { LogIn, SignUp, Verified, Verifying }

@immutable
abstract class AuthEvent {}

class LoginEvent extends AuthEvent {
  final String email;
  final String password;
  LoginEvent({
    required this.email,
    required this.password,
  });
}

class RegisterEvent extends AuthEvent {
  final Map<String, String> body;
  RegisterEvent(this.body);
}

class LogoutEvent extends AuthEvent {}
