import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:socialart/shared/presentation/screens/home_screen.dart';
import 'package:socialart/user_account/presentation/blocs/auth_cubit.dart';
import 'package:socialart/user_account/presentation/blocs/auth_state.dart';
import 'package:socialart/user_account/presentation/screens/auth/sign_in_screen.dart';

final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: 'home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/sign-in',
      name: 'sign-in',
      builder: (context, state) => const SignInScreen(),
    )
  ],
);

class RouterCubit extends Cubit<GoRouter> {
  late final AuthCubit _authCubit;

  RouterCubit({required AuthCubit authCubit}) : super(_router) {
    _authCubit = authCubit;
  }

  redirectTo() {
    if (_authCubit.state is! AuthLogged) {
      state.goNamed('sign-in');
      return;
    } 

    state.go('/');
  }
}
