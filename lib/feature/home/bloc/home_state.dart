part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default([]) List<TripEntity> trips,
    @Default(false) bool isLoading,
    @Default(None()) Option<Either<Failure, Unit>> tripFailureOrSuccess,
    @Default("unknown") userName,
    @Default(None()) Option<Either<Failure, Unit>> logoutFailureFailureOrUnit,
  }) = _HomeState;

  factory HomeState.initial() => HomeState(
        logoutFailureFailureOrUnit: none(),
      );
}
