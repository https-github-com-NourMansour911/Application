import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'password_state.dart';

class PasswordCubit extends Cubit<PasswordState> {
  PasswordCubit() : super(PasswordUnsSaved());
  bool isSaved = false;
  void SavePassword(isSaved) {
    this.isSaved = isSaved;
    emit(PasswordSave());
  }
}
