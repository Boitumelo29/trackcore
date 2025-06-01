part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default("unknown") userName,
    @Default(None()) Option<Either<Failure, Unit>> logoutFailureFailureOrUnit,
  }) = _HomeState;

  factory HomeState.initial() => HomeState(
        logoutFailureFailureOrUnit: none(),
      );
}
