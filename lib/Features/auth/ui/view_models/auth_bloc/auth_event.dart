part of 'auth_bloc.dart';

enum AuthMode { LogIn, SignUp, RememberPassword, SendCode }

@immutable
sealed class AuthEvent {}
