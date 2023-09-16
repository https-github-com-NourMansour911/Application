import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:e_gem/Features/Auth/repos/auth_repo.dart';
import 'package:e_gem/core/errors/failures.dart';
import 'package:e_gem/core/utils/dio_requests.dart';

class AuthRepoImpl implements AuthRepo {
  @override
  Future<Either<Failure, String>> getToken(body) async {
    var regiter_token;
    try {
      regiter_token = await Api.post(
        endPoint: '/register',
        body: body,
      );
      return right(regiter_token);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, String>> getLogin(body) async {
    var logIn_token;
    try {
      logIn_token = await Api.post(
        endPoint: '/login',
        body: body,
      );
      return right(logIn_token['token']);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
}
