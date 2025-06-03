import 'package:dartz/dartz.dart';
import 'package:trackcore/core/failure/failures.dart';
import 'package:trackcore/feature/home/domain/entity/trip_entity.dart';

abstract class TripRepository {
  Future<Either<Failure, List<TripEntity>>> getTrips();

  Future<Either<Failure, TripNotesResponseModel>> setTripNotes(
      {required String ID, required String note});
}
