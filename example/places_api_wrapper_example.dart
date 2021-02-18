import 'package:places_api_wrapper/src/enums/place_details_fields.dart';
import 'package:places_api_wrapper/src/place.dart';

Future<void> main() async {
  GPlaces.key = 'AIzaSyBs7N7qU5nNLY-fNcnesbnJFJZ3bo55o6k';
  var response = await GPlaces.placedetails(
    'ChIJN1t_tDeuEmsRUsoyG83frY4',
    fields: [PlaceDetailsFields.address_component],
  );

  print(response);
}
