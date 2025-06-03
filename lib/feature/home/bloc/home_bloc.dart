import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trackcore/core/failure/failures.dart';
import 'package:trackcore/feature/home/domain/entity/trip_entity.dart';
import 'package:trackcore/feature/home/domain/repo/repo.dart';

part 'home_event.dart';

part 'home_state.dart';

part 'home_bloc.freezed.dart';

///in my homebloc I load all of the trips
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final TripRepository tripRepository;

  HomeBloc({required this.tripRepository}) : super(HomeState.initial()) {
    on<FetchTrips>((event, emit) async {
      emit(state.copyWith(isLoading: true, tripFailureOrSuccess: none()));

      final result = await tripRepository.getTrips();
      result.fold(
        (failure) => emit(state.copyWith(
          isLoading: false,
          tripFailureOrSuccess: some(left(failure)),
        )),
        (trips) => emit(state.copyWith(
          trips: trips,
          isLoading: false,
          tripFailureOrSuccess: some(right(unit)),
        )),
      );
    });
  }
}
