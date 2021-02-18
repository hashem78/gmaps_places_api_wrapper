import 'package:places_api_wrapper/src/models/place_response/place_response.dart';
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
            response,
            equals(
              FindPlaceResponse.fromJson(
                {
                  'candidates': [
                    {
                      'photos': [
                        {
                          'height': 3278,
                          'html_attributions': [
                            '\u003ca href=\'https://maps.google.com/maps/contrib/104790014239029387558\'\u003eMuseum of Contemporary Art Australia\u003c/a\u003e'
                          ],
                          'photo_reference':
                              'ATtYBwJSsGz-g_rMzSqv5ofhJX2FIOvWLYbsdfM2NTtWTPvKFfAFwxTr7_kAI9uCyN0guMV4NgSj6uEf-pos_ByLCBFh7oyupLd8U1xQlQKgo8zPENtRIHDmISoMEwuXc964G710mhIDksrEcqs86SRSAsqVAKhmEI5uB7ogy3eNB0ROpLCo',
                          'width': 3543
                        }
                      ],
                    }
                  ],
                  'status': 'OK'
                },
              ),
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
            response,
            equals(
              FindPlaceResponse.fromJson(
                {
                  'candidates': [
                    {
                      'geometry': {
                        'location': {'lat': -33.8599358, 'lng': 151.2090295},
                        'viewport': {
                          'northeast': {
                            'lat': -33.85824377010728,
                            'lng': 151.2104386798927
                          },
                          'southwest': {
                            'lat': -33.86094342989272,
                            'lng': 151.2077390201073
                          }
                        }
                      },
                    }
                  ],
                  'status': 'OK'
                },
              ),
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
            response,
            equals(
              FindPlaceResponse.fromJson(
                {
                  'candidates': [
                    {
                      'opening_hours': {
                        'open_now': false,
                      },
                    }
                  ],
                  'status': 'OK',
                },
              ),
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
            response,
            equals(
              FindPlaceResponse.fromJson(
                {
                  'candidates': [
                    {
                      'formatted_address':
                          '140 George St, The Rocks NSW 2000, Australia',
                    }
                  ],
                  'status': 'OK',
                },
              ),
            ),
          );
        },
      );
    },
  );
}
