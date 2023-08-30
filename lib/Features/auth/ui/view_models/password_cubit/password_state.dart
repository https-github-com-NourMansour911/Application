part of 'password_cubit.dart';

@immutable
sealed class PasswordState {}

final class PasswordSave extends PasswordState {}

final class PasswordForget extends PasswordState {}

final class PasswordHidden extends PasswordState {}
