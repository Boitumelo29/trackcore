import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trackcore/core/failure/failures.dart';
import 'package:trackcore/feature/home/data/trip_model/trip_model.dart';
import 'package:trackcore/feature/home/domain/entity/trip_entity.dart';

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

  Future<Either<Failure, TripNotesResponseModel>> tripNotes(
      {required String ID, required String note}) async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      final tripNote = {'ID': ID, 'note': note};
      await prefs.setString('trip_note_$ID', jsonEncode(tripNote));

      return right(TripNotesResponseModel(ID: ID, note: note));
    } catch (e) {
      return left(Failure(message: "$e"));
    }
  }
}
