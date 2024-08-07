import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:socialart/shared/presentation/screens/home_screen.dart';
import 'package:socialart/user_account/presentation/blocs/auth_cubit.dart';
import 'package:socialart/user_account/presentation/blocs/auth_state.dart';
import 'package:socialart/user_account/presentation/screens/auth/sign_in_screen.dart';
import 'package:socialart/user_account/presentation/screens/auth/sign_up_screen.dart';
import 'package:socialart/user_account/presentation/screens/auth/lets_go_started_screen.dart';

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
    ),
    GoRoute(
      path: '/sign-up',
      name: 'sign-up',
      builder: (context, state) => const SignUpScreen(),
    ),
     GoRoute(
      path: '/lets-go-started',
      name: 'lets-go-started',
      builder: (context, state) => const LestGoStartedScreen(),
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
      state.goNamed('lets-go-started');
      return;
    } 

    state.go('/');
  }
}
