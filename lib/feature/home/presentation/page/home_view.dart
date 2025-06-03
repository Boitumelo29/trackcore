import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trackcore/common_widgets/widgets/buttons/long_rectangle_button.dart';
import 'package:trackcore/common_widgets/widgets/textfield/trip_notes.dart';
import 'package:trackcore/feature/auth/bloc/auth_bloc.dart';
import 'package:trackcore/feature/home/bloc/home_bloc.dart';
import 'package:trackcore/core/routes/router.dart';
import 'package:trackcore/feature/user/presentation/widget/track_core_sub_text.dart';
import 'package:trackcore/feature/user/presentation/widget/trackcore_text.dart';
import 'package:trackcore/utils/validation/validation.dart';

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
            return Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TrackCoreText(
                  shouldBeFaint: true,
                ),
                TrackCoreSubText()
              ],
            ));
          }

          return ListView.builder(
            itemCount: state.trips.length,
            itemBuilder: (context, index) {
              final trip = state.trips[index];
              return ListTile(
                onTap: () => bottomSheet(context, trip.id.toString()),
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

  Future<void> bottomSheet(BuildContext context, String ID) {
    return showModalBottomSheet(
      context: context,
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      builder: (BuildContext context) {
        TextEditingController controller = TextEditingController();
        return SizedBox(
          height: 320,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(
              child: Column(
                spacing: 15,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.directions_car_filled),
                        const Text(
                          ' The delivery name',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Start and end time",
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Text("KMs")
                      ],
                    ),
                  ),
                  TripNotesTextField(
                      controller: controller,
                      validator: (value) {
                        return Validation.textValidation(value);
                      }),
                  LongRectangleButton(
                      onTap: () {
                        // context.maybePop()

                        context
                            .read<HomeBloc>()
                            .add(TripNotes(note: controller.text, ID: ID));
                      },
                      title: "Confirm trip")
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget icon(String deliveryType) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      child: Icon(
        deliveryType == "Collection"
            ? Icons.car_crash
            : Icons.directions_car_filled,
        color: deliveryType == "Collection" ? Colors.red : Colors.blueAccent,
      ),
    );
  }
}
