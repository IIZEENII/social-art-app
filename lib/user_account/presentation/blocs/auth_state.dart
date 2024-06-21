abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthLoginLoading extends AuthState {}

class AuthLogged extends AuthState {
  final String token;
  AuthLogged({required this.token});
}

class AuthUnlogged extends AuthState {}

class AuthError extends AuthState {
  final String message;
  AuthError({required this.message});
}
