import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:socialart/user_account/application/sign_in_usecase.dart';
import 'package:socialart/user_account/domain/auth_repository.dart';
import 'package:socialart/user_account/presentation/blocs/auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  late final SignInUsecase _signInUsecase;

  AuthCubit({required SignInUsecase signInUsecase}) : super(AuthInitial()) {
    _signInUsecase = signInUsecase;
  }

  Future<void> signIn(SignInParams params) async {
    emit(AuthLoginLoading());
    final either = await _signInUsecase(params);
    emit(either.fold(
      (failure) => AuthError(message: failure.message),
      (token) => AuthLogged(token: token),
    ));
  }
}
