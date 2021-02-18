import 'package:gmaps_places_api_wrapper/src/models/models.dart';

import 'package:gmaps_places_api_wrapper/src/place.dart';

Future<void> main() async {
  GPlaces.key = String.fromEnvironment('GMAPS_API_KEY');
  final response = await GPlaces.nearbysearch(GLocation(lat: -30, lng: 20));
  print(response);
}
