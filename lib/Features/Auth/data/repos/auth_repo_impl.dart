import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:e_gem/Features/Auth/data/repos/auth_repo.dart';
import 'package:e_gem/core/errors/failures.dart';
import 'package:e_gem/core/utils/Dio_requests.dart';

class AuthRepoImpl implements AuthRepo {
  @override
  Future<Either<Failure, String>> getToken(body) async {
    var regiter_token;
    try {
      regiter_token = await Api.post(
        endPoint: '/register',
        body: body,
      );
      return right(regiter_token['token']);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  logIn(Map<String, dynamic> body) {
    try {
      var logIn_token = Api.post(endPoint: '/login', body: body);
      return logIn_token['token'];
    } on Exception catch (e) {
      print('$e in get LogIn Token');
    }
  }
}
