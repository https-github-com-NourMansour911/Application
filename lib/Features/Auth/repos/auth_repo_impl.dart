import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:e_gem/Features/Auth/data/models/user_model.dart';
import 'package:e_gem/Features/Auth/repos/auth_repo.dart';
import 'package:e_gem/core/errors/failures.dart';
import 'package:e_gem/core/utils/dio_requests.dart';

class AuthRepoImpl implements AuthRepo {
  @override
  Future<Either<Failure, void>> getToken(body) async {
    try {
      await Api.post(
        endPoint: '/register',
        body: body,
      );
      return right(null);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserModel>> getLogin(body) async {
    var logIn_token;
    try {
      logIn_token = await Api.post(
        endPoint: '/login',
        body: body,
      );
      print(logIn_token);
      return right(
        UserModel(
          email: logIn_token['email'],
          name: logIn_token['name'],
          token: logIn_token['token'],
          phone: logIn_token['phone'],
          img: logIn_token['img'],
        ),
      );
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
}
