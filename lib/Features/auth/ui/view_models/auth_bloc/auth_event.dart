part of 'auth_bloc.dart';

enum AuthMode { LogIn, SignUp }

@immutable
sealed class AuthEvent {}
