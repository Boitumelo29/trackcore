import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trackcore/feature/auth/data/auth_repo.dart';
import 'package:trackcore/feature/home/presentation/page/home_view.dart';
import 'package:trackcore/feature/user/bloc/login_bloc.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginBloc>(
      create: (context) => LoginBloc(authRepository: AuthRepository()),
      child: HomeView(),
    );
  }
}
