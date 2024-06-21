import 'package:dartz/dartz.dart';
import 'package:socialart/shared/domain/failures/failure.dart';

class SignInParams {
  String email;
  String password;

  SignInParams({
    required this.email,
    required this.password,
  });
}

class SignUpParams extends SignInParams {
  String username;

  SignUpParams({
    required this.username,
    required super.email,
    required super.password,
  });
}

abstract class AuthRepository {
  Future<Either<Failure, String>> signIn(SignInParams params);
  Future<Either<Failure, void>> signUp(SignUpParams params);
}
