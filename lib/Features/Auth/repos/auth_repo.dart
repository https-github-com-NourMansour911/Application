import 'package:dartz/dartz.dart';
import 'package:e_gem/Features/Auth/data/models/user_model.dart';
import 'package:e_gem/core/errors/failures.dart';

abstract class AuthRepo {
  Future<Either<Failure, void>> getToken(Map<String, String> body);
  Future<Either<Failure, UserModel>> getLogin(
    Map<String, String> body,
  );
}
