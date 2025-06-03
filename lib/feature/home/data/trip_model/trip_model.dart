import 'package:trackcore/feature/home/domain/entity/trip_entity.dart';

class TripModel extends TripEntity {
  const TripModel({
    required super.id,
    required super.tripName,
    required super.deliveryType,
    required super.startTime,
    required super.endTime,
    required super.distance,
  });

  factory TripModel.fromJson(Map<String, dynamic> json) {
    return TripModel(
      id: json['id'],
      deliveryType: json['deliveryType'],
      tripName: json['tripName'],
      startTime: json['startTime'],
      endTime: json['endTime'],
      distance: (json['distance'] as num).toDouble(),
    );
  }
}
