// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchTrips,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchTrips,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchTrips,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(FetchTrips value) fetchTrips,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(FetchTrips value)? fetchTrips,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FetchTrips value)? fetchTrips,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'HomeEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchTrips,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchTrips,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchTrips,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(FetchTrips value) fetchTrips,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(FetchTrips value)? fetchTrips,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FetchTrips value)? fetchTrips,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements HomeEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$FetchTripsImplCopyWith<$Res> {
  factory _$$FetchTripsImplCopyWith(
          _$FetchTripsImpl value, $Res Function(_$FetchTripsImpl) then) =
      __$$FetchTripsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchTripsImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$FetchTripsImpl>
    implements _$$FetchTripsImplCopyWith<$Res> {
  __$$FetchTripsImplCopyWithImpl(
      _$FetchTripsImpl _value, $Res Function(_$FetchTripsImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchTripsImpl implements FetchTrips {
  const _$FetchTripsImpl();

  @override
  String toString() {
    return 'HomeEvent.fetchTrips()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchTripsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchTrips,
  }) {
    return fetchTrips();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchTrips,
  }) {
    return fetchTrips?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchTrips,
    required TResult orElse(),
  }) {
    if (fetchTrips != null) {
      return fetchTrips();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(FetchTrips value) fetchTrips,
  }) {
    return fetchTrips(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(FetchTrips value)? fetchTrips,
  }) {
    return fetchTrips?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FetchTrips value)? fetchTrips,
    required TResult orElse(),
  }) {
    if (fetchTrips != null) {
      return fetchTrips(this);
    }
    return orElse();
  }
}

abstract class FetchTrips implements HomeEvent {
  const factory FetchTrips() = _$FetchTripsImpl;
}

/// @nodoc
mixin _$HomeState {
  List<TripEntity> get trips => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<Failure, Unit>> get tripFailureOrSuccess =>
      throw _privateConstructorUsedError;
  dynamic get userName => throw _privateConstructorUsedError;
  Option<Either<Failure, Unit>> get logoutFailureFailureOrUnit =>
      throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {List<TripEntity> trips,
      bool isLoading,
      Option<Either<Failure, Unit>> tripFailureOrSuccess,
      dynamic userName,
      Option<Either<Failure, Unit>> logoutFailureFailureOrUnit});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trips = null,
    Object? isLoading = null,
    Object? tripFailureOrSuccess = null,
    Object? userName = freezed,
    Object? logoutFailureFailureOrUnit = null,
  }) {
    return _then(_value.copyWith(
      trips: null == trips
          ? _value.trips
          : trips // ignore: cast_nullable_to_non_nullable
              as List<TripEntity>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      tripFailureOrSuccess: null == tripFailureOrSuccess
          ? _value.tripFailureOrSuccess
          : tripFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as dynamic,
      logoutFailureFailureOrUnit: null == logoutFailureFailureOrUnit
          ? _value.logoutFailureFailureOrUnit
          : logoutFailureFailureOrUnit // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TripEntity> trips,
      bool isLoading,
      Option<Either<Failure, Unit>> tripFailureOrSuccess,
      dynamic userName,
      Option<Either<Failure, Unit>> logoutFailureFailureOrUnit});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trips = null,
    Object? isLoading = null,
    Object? tripFailureOrSuccess = null,
    Object? userName = freezed,
    Object? logoutFailureFailureOrUnit = null,
  }) {
    return _then(_$HomeStateImpl(
      trips: null == trips
          ? _value._trips
          : trips // ignore: cast_nullable_to_non_nullable
              as List<TripEntity>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      tripFailureOrSuccess: null == tripFailureOrSuccess
          ? _value.tripFailureOrSuccess
          : tripFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
      userName: freezed == userName ? _value.userName! : userName,
      logoutFailureFailureOrUnit: null == logoutFailureFailureOrUnit
          ? _value.logoutFailureFailureOrUnit
          : logoutFailureFailureOrUnit // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {final List<TripEntity> trips = const [],
      this.isLoading = false,
      this.tripFailureOrSuccess = const None(),
      this.userName = "unknown",
      this.logoutFailureFailureOrUnit = const None()})
      : _trips = trips;

  final List<TripEntity> _trips;
  @override
  @JsonKey()
  List<TripEntity> get trips {
    if (_trips is EqualUnmodifiableListView) return _trips;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trips);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final Option<Either<Failure, Unit>> tripFailureOrSuccess;
  @override
  @JsonKey()
  final dynamic userName;
  @override
  @JsonKey()
  final Option<Either<Failure, Unit>> logoutFailureFailureOrUnit;

  @override
  String toString() {
    return 'HomeState(trips: $trips, isLoading: $isLoading, tripFailureOrSuccess: $tripFailureOrSuccess, userName: $userName, logoutFailureFailureOrUnit: $logoutFailureFailureOrUnit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            const DeepCollectionEquality().equals(other._trips, _trips) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.tripFailureOrSuccess, tripFailureOrSuccess) ||
                other.tripFailureOrSuccess == tripFailureOrSuccess) &&
            const DeepCollectionEquality().equals(other.userName, userName) &&
            (identical(other.logoutFailureFailureOrUnit,
                    logoutFailureFailureOrUnit) ||
                other.logoutFailureFailureOrUnit ==
                    logoutFailureFailureOrUnit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_trips),
      isLoading,
      tripFailureOrSuccess,
      const DeepCollectionEquality().hash(userName),
      logoutFailureFailureOrUnit);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
          {final List<TripEntity> trips,
          final bool isLoading,
          final Option<Either<Failure, Unit>> tripFailureOrSuccess,
          final dynamic userName,
          final Option<Either<Failure, Unit>> logoutFailureFailureOrUnit}) =
      _$HomeStateImpl;

  @override
  List<TripEntity> get trips;
  @override
  bool get isLoading;
  @override
  Option<Either<Failure, Unit>> get tripFailureOrSuccess;
  @override
  dynamic get userName;
  @override
  Option<Either<Failure, Unit>> get logoutFailureFailureOrUnit;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
