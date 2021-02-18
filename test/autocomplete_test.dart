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
    'should check if find autcomplete response is OK',
    () async {
      // arrange

      // act
      var response = await GPlaces.autocomplete(
        'Amoeba',
        location: GLocation(lat: 37.76999, lng: -122.44696),
        radius: 500,
      );
      // assert
      expect(response.status, equals(ResponseStatus.OK));
    },
  );
}
