import 'package:dartz/dartz.dart';
import 'package:socialart/shared/domain/failures/failure.dart';
import 'package:socialart/user_account/domain/auth_repository.dart';

class SignInUsecase {
  late final AuthRepository _authRepository;

  SignInUsecase({
    required AuthRepository authRepository,
  }) {
    _authRepository = authRepository;
  }

  Future<Either<Failure, String>> call(SignInParams params) async {
    return await _authRepository.signIn(params);
  }
}
