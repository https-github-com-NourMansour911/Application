import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'password_state.dart';

class PasswordCubit extends Cubit<PasswordState> {
  PasswordCubit() : super(PasswordForget());
  bool isSaved = false;
  bool isHidden = true;
  void SavePassword(isSaved) {
    this.isSaved = isSaved;
    emit(PasswordSave());
  }

  showPassword() {
    isHidden = !isHidden;
    emit(PasswordHidden());
  }
}
