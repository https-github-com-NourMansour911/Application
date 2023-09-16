import 'package:dartz/dartz.dart';
import 'package:e_gem/core/errors/failures.dart';

abstract class AuthRepo {
  Future<Either<Failure, String?>> getToken(Map<String, String> body);
  logIn(Map<String, String> body);
}
