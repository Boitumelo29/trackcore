import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:trackcore/feature/home/data/trip_model/trip_model.dart';

class TripRemoteDataSource {
  final http.Client client;

  TripRemoteDataSource(this.client);

  Future<List<TripModel>> getTrips() async {
    ///our api call
    final response = await client.get(Uri.parse('http://localhost:8080/trips'));

    if (response.statusCode == 200) {
      final List list = json.decode(response.body);
     // print("This is our body ${response.body}");
      return list.map((e) => TripModel.fromJson(e)).toList();
    } else {
//      print("we have failed");

      throw Exception('Failed to fetch trips');
    }
  }
}
