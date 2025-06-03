import 'package:dartz/dartz.dart';
import 'package:trackcore/core/failure/failures.dart';
import 'package:trackcore/feature/home/data/data_source/trip_remote_datasource.dart';
import 'package:trackcore/feature/home/domain/entity/trip_entity.dart';
import 'package:trackcore/feature/home/domain/repo/repo.dart';
import 'package:http/http.dart' as http;

class TripRepositoryImpl implements TripRepository {
  final TripRemoteDataSource _dataSource;

  TripRepositoryImpl() : _dataSource = TripRemoteDataSource(http.Client());

  @override
  Future<Either<Failure, List<TripEntity>>> getTrips() async {
    try {
      final trips = await _dataSource.getTrips();
      return Right(trips);
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }
}
