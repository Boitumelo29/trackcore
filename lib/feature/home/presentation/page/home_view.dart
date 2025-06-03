import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trackcore/feature/auth/bloc/auth_bloc.dart';
import 'package:trackcore/feature/home/bloc/home_bloc.dart';
import 'package:trackcore/core/routes/router.dart';
import 'package:trackcore/feature/user/presentation/widget/trackcore_text.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home view"),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            tooltip: 'Logout',
            onPressed: () {
              context.read<AuthBloc>().add(const AuthEvent.logout());
              context.router.pushAndPopUntil(
                const LoginRoute(),
                predicate: (_) => false,
              );
            },
          ),
        ],
      ),
      body: BlocBuilder<HomeBloc, HomeState>(
        buildWhen: (p, c) => true,
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state.trips.isEmpty) {
            TrackCoreText();
          }

          return ListView.builder(
            itemCount: state.trips.length,
            itemBuilder: (context, index) {
              final trip = state.trips[index];
              return ListTile(
                leading: icon(trip.deliveryType),
                title: Text(trip.tripName),
                subtitle: Text("${trip.startTime} → ${trip.endTime}"),
                trailing: Text("${trip.distance.toStringAsFixed(1)} km"),
              );
            },
          );
        },
      ),
    );
  }

  Widget icon(String deliveryType) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      child: Icon(
        deliveryType == "Collection"
            ? Icons.chevron_right_outlined
            : Icons.chevron_left,
        color: deliveryType == "Collection" ? Colors.red : Colors.blueAccent,
      ),
    );
  }
}
