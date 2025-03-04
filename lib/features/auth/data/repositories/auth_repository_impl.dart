import 'package:blog_bit/core/error/exception.dart';
import 'package:blog_bit/core/error/failure.dart';
import 'package:blog_bit/features/auth/data/datasources/auth_remote_datasources.dart';
import 'package:blog_bit/features/auth/domain/repository/auth_repository.dart';
import 'package:fpdart/fpdart.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDatasources remoteDatasources;
  AuthRepositoryImpl(this.remoteDatasources);

  @override
  Future<Either<Failure, String>> signInWithEmail({
    required String email,
    required String password,
  }) async {
    try {
      final userId = await remoteDatasources.signInWithEmail(
        email: email,
        password: password,
      );
      return right(userId);
    } on ServerException catch (error) {
      return left(Failure(error.message));
    }
  }

  @override
  Future<Either<Failure, String>> signUpWithEmail({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      final userId = await remoteDatasources.signUpWithEmail(
        name: name,
        email: email,
        password: password,
      );
      return right(userId);
    } on ServerException catch (error) {
      return left(Failure(error.message));
    }
  }
}
