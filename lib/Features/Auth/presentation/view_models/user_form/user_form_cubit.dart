import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'user_form_state.dart';

class UserFormCubit extends Cubit<UserFormState> {
  UserFormCubit() : super(UserFormInitial());
  String Gender = 'Gender';
  bool isSaved = false;
  bool isHidden = true;
  bool ConfirmisHidden = true;

  void SavePassword(isSaved) async {
    this.isSaved = isSaved;

    SharedPreferences preferences = await SharedPreferences.getInstance();

    if (isSaved) {
      preferences.setInt('seen', 2);
    } else {
      preferences.setInt('seen', 1);
    }
    emit(PasswordSave());
  }

  showPassword() {
    isHidden = !isHidden;
    emit(PasswordHidden());
  }

  showConfirmPassword() {
    ConfirmisHidden = !ConfirmisHidden;
    emit(ConfirmPasswordHidden());
  }

  selectGender(String gender) {
    Gender = gender;
    emit(GenderSelected());
  }
}
