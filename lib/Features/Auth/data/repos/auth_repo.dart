import 'package:e_gem/Features/Auth/data/models/user_model.dart';

abstract class AuthRepo {
  getToken(UserModel user);
  logIn({required String token});
}
