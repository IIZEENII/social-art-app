import 'package:dartz/dartz.dart';
import 'package:socialart/shared/domain/failures/failure.dart';
import 'package:socialart/user_account/domain/auth_repository.dart';

class LocalAuthRepository implements AuthRepository {
  @override
  Future<Either<Failure, String>> signIn(SignInParams params) async {
    return right('token');
  }

  @override
  Future<Either<Failure, void>> signUp(SignUpParams params) async {
    Future.delayed(const Duration(seconds: 2));
    return right(null);
  }
}
