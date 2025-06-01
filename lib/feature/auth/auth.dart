import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trackcore/feature/auth/bloc/auth_bloc.dart';
import 'package:trackcore/feature/auth/data/auth_repo.dart';
import 'package:trackcore/feature/home/bloc/home_bloc.dart';
import 'package:trackcore/feature/home/presentation/page/home_page.dart';
import 'package:trackcore/feature/user/bloc/login_bloc.dart';
import 'package:trackcore/feature/user/presentation/pages/login_page.dart';

@RoutePage()
class MyMainAuthPage extends StatelessWidget {
  const MyMainAuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => AuthBloc(authRepository: AuthRepository())
            ..add(const CheckAuthStatus()),
        ),
        BlocProvider<HomeBloc>(
          create: (context) => HomeBloc(),
        ),
      ],
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          if (state.status == AuthStatus.loading) {
            return const Scaffold(
              body: Center(child: CircularProgressIndicator()),
            );
          }

          if (state.status == AuthStatus.authenticated) {
            return HomePage();
          } else {
            return BlocProvider(
              create: (context) => LoginBloc(authRepository: AuthRepository()),
              child: LoginPage(),
            );
          }
        },
      ),
    );
  }
}
