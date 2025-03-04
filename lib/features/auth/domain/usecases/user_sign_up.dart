import 'package:blog_bit/core/error/failure.dart';
import 'package:blog_bit/core/usecase/usecase.dart';
import 'package:blog_bit/features/auth/domain/repository/auth_repository.dart';
import 'package:fpdart/fpdart.dart';

class UserSignUp implements Usecase<String, UserSignUpParams> {
  final AuthRepository authRepository;
  UserSignUp(this.authRepository);

  @override
  Future<Either<Failure, String>> call(UserSignUpParams params) async {
    return await authRepository.signUpWithEmail(
      name: params.name,
      email: params.email,
      password: params.password,
    );
  }
}

class UserSignUpParams {
  final String name;
  final String email;
  final String password;

  UserSignUpParams({
    required this.name,
    required this.email,
    required this.password,
  });
}
