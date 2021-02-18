import 'package:places_api_wrapper/src/enums/place_types_enum.dart';
import 'package:places_api_wrapper/src/models/glocation/glocation.dart';

import 'package:places_api_wrapper/src/place.dart';

Future<void> main() async {
  GPlaces.key = 'AIzaSyBs7N7qU5nNLY-fNcnesbnJFJZ3bo55o6k';
  var response = await GPlaces.nearbysearch(
    GLocation(lat: -33.8670522, lng: 151.1957362),
    radius: 1500,
    type: PlaceType.restaurant,
    keyword: 'cruise',
  );

  print(response);
}
