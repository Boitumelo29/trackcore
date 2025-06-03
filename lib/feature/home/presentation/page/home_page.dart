import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trackcore/feature/auth/bloc/auth_bloc.dart';
import 'package:trackcore/feature/auth/data/auth_repo.dart';
import 'package:trackcore/feature/home/bloc/home_bloc.dart';
import 'package:trackcore/feature/home/data/repo/trip_repository_impl.dart';
import 'package:trackcore/feature/home/presentation/page/home_view.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeBloc>(
          create: (context) =>
              HomeBloc(tripRepository: TripRepositoryImpl())..add(FetchTrips()),
        ),
        BlocProvider<AuthBloc>(
          create: (context) => AuthBloc(authRepository: AuthRepository()),
        ),
      ],
      child: const HomeView(),
    );
  }
}
