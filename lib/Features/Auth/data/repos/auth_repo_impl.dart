import 'package:e_gem/Features/Auth/data/models/user_model.dart';
import 'package:e_gem/Features/Auth/data/repos/auth_repo.dart';
import 'package:e_gem/core/utils/Dio_requests.dart';

class AuthRepoImpl implements AuthRepo {
  @override
  getToken(UserModel user) {
    try {
      print(user.toMap());
      var token = Api.post(
        endPoint: '/register',
        body: {
          'name': 'user.name',
          'email': 'user.email@user',
          'age': 15,
          'gender': 'male',
        },
      );
      return token;
    } on Exception catch (e) {
      user.toString;
      print('$e in getToken');
    }
  }

  @override
  logIn({required String token}) {
    try {
      var user = Api.get(endPoint: '/login', token: token);
      return user;
    } on Exception catch (e) {
      print('$e in getUser');
    }
  }
}
