![Maps](https://i.imgur.com/B3G7nfH.png)
![Dart Logo](https://dart.dev/assets/shared/dart-logo-for-shares.png?2)
# About
This is a generated api wrapper for google maps' api intended to be used with location_picker_widget.
The classes used here are supposed to be self documenting but if there are doubts, please visit [https://developers.google.com/places/web-service/overview]()


# Note
To use this wrapper you have to have an API key and be a premium user.
To set api key, it is recommended to do so by making the key an environment variable

on linux:


  ```export API_KEY=<API KEY WITHOUT BRACKETS>```


then use on dart as the the following example

## Usage

A simple usage example:

```dart
import 'package:gmaps_places_api_wrapper/src/models/models.dart';

import 'package:gmaps_places_api_wrapper/src/place.dart';

Future<void> main() async {
  GPlaces.key = String.fromEnvironment('GMAPS_API_KEY');
  final response = await GPlaces.nearbysearch(GLocation(lat: -30, lng: 20));
  print(response);
}

```