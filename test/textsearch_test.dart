import 'package:places_api_wrapper/src/enums/response_status.dart';
import 'package:places_api_wrapper/src/models/glocation/glocation.dart';

import 'package:places_api_wrapper/src/place.dart';
import 'package:test/test.dart';

void main() {
  setUpAll(
    () {
      GPlaces.key = 'AIzaSyBs7N7qU5nNLY-fNcnesbnJFJZ3bo55o6k';
    },
  );
  test(
    'should check if textsearch response is OK',
    () async {
      // arrange

      // act
      var response = await GPlaces.textsearch(
        'restaurants in Sydney',
        location: GLocation(lat: 42.3675294, lng: -71.186966),
        radius: 10000,
      );
      // assert
      expect(response.status, equals(ResponseStatus.OK));
    },
  );
}
