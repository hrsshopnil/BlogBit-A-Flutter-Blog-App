import 'package:blog_bit/core/error/failure.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class AuthRepository {
  Future<Either<Failure, String>> signUpWithEmail({
    required String name,
    required String email,
    required String password,
  });

  Future<Either<Failure, String>> signInWithEmail({
    required String email,
    required String password,
  });
}
