import 'package:gmaps_places_api_wrapper/src/enums/place_details_fields.dart';
import 'package:gmaps_places_api_wrapper/src/enums/response_status.dart';

import 'package:gmaps_places_api_wrapper/src/place.dart';
import 'package:test/test.dart';

void main() {
  setUpAll(
    () {
      GPlaces.key = 'AIzaSyBs7N7qU5nNLY-fNcnesbnJFJZ3bo55o6k';
    },
  );
  test(
    'should check if placedetails response is OK',
    () async {
      // arrange

      // act
      var response = await GPlaces.placedetails(
        'ChIJN1t_tDeuEmsRUsoyG83frY4',
        fields: [PlaceDetailsFields.address_component],
      );

      // assert
      expect(response.status, equals(ResponseStatus.OK));
    },
  );
}
