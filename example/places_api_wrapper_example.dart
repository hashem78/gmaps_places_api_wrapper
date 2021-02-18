import 'package:places_api_wrapper/src/models/glocation/glocation.dart';

import 'package:places_api_wrapper/src/place.dart';

Future<void> main() async {
  GPlaces.key = 'AIzaSyBs7N7qU5nNLY-fNcnesbnJFJZ3bo55o6k';
  var response = await GPlaces.textsearch(
    'restaurants in Sydney',
    location: GLocation(lat: 42.3675294, lng: -71.186966),
    radius: 10000,
  );

  print(response);
}
