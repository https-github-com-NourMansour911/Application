part of 'auth_bloc.dart';

enum AuthMode { LogIn, SignUp, Verified, Verifying }

@immutable
sealed class AuthEvent {}
