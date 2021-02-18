import 'package:places_api_wrapper/src/enums/response_status.dart';

import 'package:places_api_wrapper/src/place.dart';
import 'package:test/test.dart';

void main() {
  setUpAll(
    () {
      GPlaces.key = 'AIzaSyBs7N7qU5nNLY-fNcnesbnJFJZ3bo55o6k';
    },
  );
  group(
    'Tests all fields for a place search',
    () {
      test(
        'should determine if find place.photos are returned correctly',
        () async {
          //arange

          // act
          var response = await GPlaces.findPlaceFromText(
            'Museum of Contemporary Art Australia',
            'textquery',
            fields: [
              'photos',
            ],
          );

          // assert
          expect(
            response.status,
            equals(
              ResponseStatus.OK,
            ),
          );
        },
      );
      test(
        'should determine if find place.geometry responses are returned correctly',
        () async {
          //arange

          // act
          var response = await GPlaces.findPlaceFromText(
            'Museum of Contemporary Art Australia',
            'textquery',
            fields: [
              'geometry',
            ],
          );

          // assert
          expect(
            response.status,
            equals(
              ResponseStatus.OK,
            ),
          );
        },
      );
      test(
        'should determine if find place.opening_hours responses are returned correctly',
        () async {
          //arange

          // act
          var response = await GPlaces.findPlaceFromText(
            'Museum of Contemporary Art Australia',
            'textquery',
            fields: [
              'opening_hours',
            ],
          );

          // assert
          expect(
            response.status,
            equals(
              ResponseStatus.OK,
            ),
          );
        },
      );
      test(
        'should determine if find place.formatted_address responses are returned correctly',
        () async {
          //arange

          // act
          var response = await GPlaces.findPlaceFromText(
            'Museum of Contemporary Art Australia',
            'textquery',
            fields: [
              'opening_hours',
            ],
          );

          // assert
          expect(
            response.status,
            equals(
              ResponseStatus.OK,
            ),
          );
        },
      );
    },
  );
}
