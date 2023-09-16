part of 'user_form_cubit.dart';

sealed class UserFormState extends Equatable {
  const UserFormState();

  @override
  List<Object> get props => [];
}

final class UserFormInitial extends UserFormState {}

final class PasswordSave extends UserFormState {}

final class PasswordForget extends UserFormState {}

final class PasswordHidden extends UserFormState {}

final class ConfirmPasswordHidden extends UserFormState {}

final class GenderSelected extends UserFormState {}
