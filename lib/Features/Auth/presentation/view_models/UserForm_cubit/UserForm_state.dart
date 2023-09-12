part of 'UserForm_cubit.dart';

@immutable
sealed class UserFormState {}

final class UserFormInitial extends UserFormState {}

final class PasswordSave extends UserFormState {}

final class PasswordForget extends UserFormState {}

final class PasswordHidden extends UserFormState {}

final class ConfirmPasswordHidden extends UserFormState {}

final class GenderSelected extends UserFormState {}
