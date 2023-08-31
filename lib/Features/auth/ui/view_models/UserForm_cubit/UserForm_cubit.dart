import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'UserForm_state.dart';

class UserFormCubit extends Cubit<UserFormState> {
  UserFormCubit() : super(UserFormInitial());
  String Gender = 'Gender';
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

  selectGender(String gender) {
    Gender = gender;
    emit(GenderSelected());
  }
}
