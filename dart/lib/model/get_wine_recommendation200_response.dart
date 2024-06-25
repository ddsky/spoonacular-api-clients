//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetWineRecommendation200Response {
  /// Returns a new [GetWineRecommendation200Response] instance.
  GetWineRecommendation200Response({
    this.recommendedWines = const {},
    required this.totalFound,
  });

  Set<GetWineRecommendation200ResponseRecommendedWinesInner> recommendedWines;

  int totalFound;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetWineRecommendation200Response &&
    _deepEquality.equals(other.recommendedWines, recommendedWines) &&
    other.totalFound == totalFound;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (recommendedWines.hashCode) +
    (totalFound.hashCode);

  @override
  String toString() => 'GetWineRecommendation200Response[recommendedWines=$recommendedWines, totalFound=$totalFound]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'recommendedWines'] = this.recommendedWines.toList(growable: false);
      json[r'totalFound'] = this.totalFound;
    return json;
  }

  /// Returns a new [GetWineRecommendation200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetWineRecommendation200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetWineRecommendation200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetWineRecommendation200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetWineRecommendation200Response(
        recommendedWines: GetWineRecommendation200ResponseRecommendedWinesInner.listFromJson(json[r'recommendedWines']).toSet(),
        totalFound: mapValueOfType<int>(json, r'totalFound')!,
      );
    }
    return null;
  }

  static List<GetWineRecommendation200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetWineRecommendation200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetWineRecommendation200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetWineRecommendation200Response> mapFromJson(dynamic json) {
    final map = <String, GetWineRecommendation200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetWineRecommendation200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetWineRecommendation200Response-objects as value to a dart map
  static Map<String, List<GetWineRecommendation200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetWineRecommendation200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetWineRecommendation200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'recommendedWines',
    'totalFound',
  };
}

