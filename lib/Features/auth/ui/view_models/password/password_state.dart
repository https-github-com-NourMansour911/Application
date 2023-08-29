part of 'password_cubit.dart';

@immutable
sealed class PasswordState {}

final class PasswordSave extends PasswordState {}

final class PasswordUnsSaved extends PasswordState {}

final class PasswordForget extends PasswordState {}
