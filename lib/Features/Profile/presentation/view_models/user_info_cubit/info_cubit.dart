import 'package:bloc/bloc.dart';
import 'package:e_gem/Features/Profile/data/models/user_model.dart';
import 'package:equatable/equatable.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'info_state.dart';

class InfoCubit extends Cubit<InfoState> {
  InfoCubit() : super(InfoInitial());
  Future<UserModel> getInfo() async {
    SharedPreferences _pref = await SharedPreferences.getInstance();
    UserModel user = UserModel(
      name: _pref.getString('name')!,
      email: _pref.getString('email')!,
      phone: _pref.getString('phone') ?? '',
      img: _pref.getString('img') ?? '',
    );
    return user;
  }
}
