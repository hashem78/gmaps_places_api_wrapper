import 'dart:convert';
import 'package:enum_to_string/enum_to_string.dart';
import 'package:http/http.dart' as http;
import 'package:places_api_wrapper/src/enums/languages.dart';
import 'package:places_api_wrapper/src/enums/place_details_fields.dart';
import 'package:places_api_wrapper/src/enums/place_types_enum.dart';
import 'package:places_api_wrapper/src/enums/ranking_method.dart';
import 'package:places_api_wrapper/src/models/glocation/glocation.dart';
import 'package:places_api_wrapper/src/models/nearby_response/nearby_search_response.dart';
import 'package:places_api_wrapper/src/models/place_details_response/place_details_response.dart';
import 'package:places_api_wrapper/src/models/textsearch_response/text_search_response.dart';

import 'models/place_response/place_response.dart';

class GPlaces {
  static String key;
  static const String _findPlaceFromTextEndPoint =
      'https://maps.googleapis.com/maps/api/place/findplacefromtext/json?';
  static const String _nearbysearchEndPoint =
      'https://maps.googleapis.com/maps/api/place/nearbysearch/json?';
  static const String _placedetailsEndPoint =
      'https://maps.googleapis.com/maps/api/place/details/json?';

  static Future<FindPlaceResponse> findPlaceFromText(
    String input,
    String inputtype, {
    String language,
    List<String> fields,
  }) async {
    final fixedFields = (fields == null ? false : true)
        ? fields.fold<String>('&fields=', (prev, next) {
            return '$prev,$next';
          }).replaceFirst(',', '')
        : '';
    final fixedlanguage =
        (language == null ? false : true) ? '&language=$language' : '';
    var fixedEndpoint =
        '${_findPlaceFromTextEndPoint}key=$key&input=$input&inputtype=$inputtype$fixedFields$fixedlanguage';
    print(fixedEndpoint);
    final response = await http.get(fixedEndpoint);
    final body = response.body;
    return FindPlaceResponse.fromJson(jsonDecode(body));
  }

  static Future<NearbySearchResponse> nearbysearch(
    GLocation location, {
    int radius,
    String keyword,
    Language language,
    int minprice,
    int maxprice,
    String name,
    bool opennow,
    PlaceType type,
    RankingMethod rankby,
    String pageToken,
  }) async {
    assert(
      location != null,
      "Location can't be null",
    );
    assert(
      (radius == null && rankby != null) || (radius != null && rankby == null),
      'Radius and RankingMethod are mutually exclusive, if radius is null rankby has to be valid and vice versa',
    );
    final fixedLocation = 'location=$location';
    final fixedRadius =
        (radius == null ? false : true) ? '&radius=$radius' : '';
    final fixedKeyword =
        (keyword == null ? false : true) ? '&keyword=$keyword' : '';
    final fixedLanguage = (language == null ? false : true)
        ? '&language=${EnumToString.convertToString(language)}'
        : '';
    final fixedMinPrice =
        (minprice == null ? false : true) ? '&minprice=$minprice' : '';
    final fixedMaxPrice =
        (maxprice == null ? false : true) ? '&minprice=$maxprice' : '';
    final fixedName = (name == null ? false : true) ? '&name=$name' : '';
    final fixedOpennow = (opennow == null ? false : true) ? '&opennow' : '';
    final fixedPlaceType = (type == null ? false : true)
        ? '&type=${EnumToString.convertToString(type)}'
        : '';
    final fixedRankby = (rankby == null ? false : true)
        ? EnumToString.convertToString(rankby)
        : '';
    final fixedPageToken =
        (pageToken == null ? false : true) ? '&pageToken=$pageToken' : '';

    final fixedEndpoint =
        '$_nearbysearchEndPoint$fixedLocation$fixedRadius$fixedKeyword$fixedLanguage$fixedMinPrice$fixedMaxPrice$fixedName$fixedOpennow$fixedPlaceType$fixedRankby$fixedPageToken&key=$key';
    print(fixedEndpoint);
    final respone = await http.get(fixedEndpoint);
    return NearbySearchResponse.fromJson(
      jsonDecode(respone.body),
    );
  }

  static Future<TextSearchResponse> textsearch(
    String query, {
    String region,
    // ignore: always_require_non_null_named_parameters
    GLocation location,
    int radius,
    Language language,
    int minprice,
    int maxprice,
    String name,
    bool opennow,
    PlaceType type,
    String pageToken,
  }) async {
    assert(
      location != null,
      "Location can't be null",
    );
    final fixedQuery = 'query=$query';
    final fixedLocation =
        (location == null ? false : true) ? '&location=$location' : '';

    final fixedRadius =
        (radius == null ? false : true) ? '&radius=$radius' : '';

    final fixedLanguage = (language == null ? false : true)
        ? '&language=${EnumToString.convertToString(language)}'
        : '';
    final fixedMinPrice =
        (minprice == null ? false : true) ? '&minprice=$minprice' : '';
    final fixedMaxPrice =
        (maxprice == null ? false : true) ? '&minprice=$maxprice' : '';
    final fixedName = (name == null ? false : true) ? '&name=$name' : '';
    final fixedOpennow = (opennow == null ? false : true) ? '&opennow' : '';
    final fixedPlaceType = (type == null ? false : true)
        ? '&type=${EnumToString.convertToString(type)}'
        : '';

    final fixedPageToken =
        (pageToken == null ? false : true) ? '&pageToken=$pageToken' : '';

    final fixedEndpoint =
        '$_nearbysearchEndPoint$fixedQuery$fixedLocation$fixedRadius$fixedLanguage$fixedMinPrice$fixedMaxPrice$fixedName$fixedOpennow$fixedPlaceType$fixedPageToken&key=$key';
    print(fixedEndpoint);
    final respone = await http.get(fixedEndpoint);
    return TextSearchResponse.fromJson(
      jsonDecode(respone.body),
    );
  }

  static Future<PlaceDetailsResponse> placedetails(
    String placeId, {
    Language language,
    String region,
    String sessionToken,
    List<PlaceDetailsFields> fields,
  }) async {
    assert(
      placeId != null,
      'PlaceId must not be null',
    );
    final fixedPlaceId = 'place_id=$placeId';
    final fixedLanguage = (language == null ? false : true)
        ? '&language=${EnumToString.convertToString(language)}'
        : '';
    final fixedRegion =
        (region == null ? false : true) ? '&region=$region' : '';
    final fixedsessionToken = (sessionToken == null ? false : true)
        ? '&sessiontoken=$sessionToken'
        : '';
    final fixedFields = fields.fold<String>(
      '&fields=',
      (prev, next) {
        return '$prev,${EnumToString.convertToString(next)}';
      },
    ).replaceFirst(',', '');
    final fixedEndpoint =
        '$_placedetailsEndPoint$fixedPlaceId$fixedLanguage$fixedRegion$fixedsessionToken$fixedFields&key=$key';
    print(fixedEndpoint);
    final response = await http.get(fixedEndpoint);
    return PlaceDetailsResponse.fromJson(jsonDecode(response.body));
  }
}
