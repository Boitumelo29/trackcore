class TripEntity {
  final int id;
  final String startTime;
  final String tripName;
  final String deliveryType;
  final String endTime;
  final double distance;

  const TripEntity({
    required this.id,
    required this.tripName,
    required this.deliveryType,
    required this.startTime,
    required this.endTime,
    required this.distance,
  });
}
