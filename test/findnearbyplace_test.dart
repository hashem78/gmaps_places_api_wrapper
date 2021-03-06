import 'package:gmaps_places_api_wrapper/src/enums/place_types.dart';
import 'package:gmaps_places_api_wrapper/src/enums/response_status.dart';
import 'package:gmaps_places_api_wrapper/src/models/glocation/glocation.dart';

import 'package:gmaps_places_api_wrapper/src/place.dart';
import 'package:test/test.dart';

void main() {
  setUpAll(
    () {
      GPlaces.key = 'AIzaSyBs7N7qU5nNLY-fNcnesbnJFJZ3bo55o6k';
    },
  );
  test(
    'should check if find place response is OK',
    () async {
      // arrange

      // act
      var response = await GPlaces.nearbysearch(
        GLocation(lat: -33.8670522, lng: 151.1957362),
        radius: 1500,
        type: PlaceType.restaurant,
        keyword: 'cruise',
      );
      // assert
      expect(response.status, equals(ResponseStatus.OK));
    },
  );
}
