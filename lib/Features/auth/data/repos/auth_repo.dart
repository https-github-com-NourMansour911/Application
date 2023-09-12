import 'package:dartz/dartz.dart';
import 'package:e_gem/core/errors/failures.dart';

abstract class AuthRepo {
  Future login();
  Future<Either<Failure, String>> register();
  Future forget_password();
}
  