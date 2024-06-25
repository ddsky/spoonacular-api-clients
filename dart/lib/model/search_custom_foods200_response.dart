//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchCustomFoods200Response {
  /// Returns a new [SearchCustomFoods200Response] instance.
  SearchCustomFoods200Response({
    this.customFoods = const {},
    required this.type,
    required this.offset,
    required this.number,
  });

  Set<SearchCustomFoods200ResponseCustomFoodsInner> customFoods;

  String type;

  int offset;

  int number;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchCustomFoods200Response &&
    _deepEquality.equals(other.customFoods, customFoods) &&
    other.type == type &&
    other.offset == offset &&
    other.number == number;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (customFoods.hashCode) +
    (type.hashCode) +
    (offset.hashCode) +
    (number.hashCode);

  @override
  String toString() => 'SearchCustomFoods200Response[customFoods=$customFoods, type=$type, offset=$offset, number=$number]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'customFoods'] = this.customFoods.toList(growable: false);
      json[r'type'] = this.type;
      json[r'offset'] = this.offset;
      json[r'number'] = this.number;
    return json;
  }

  /// Returns a new [SearchCustomFoods200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchCustomFoods200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchCustomFoods200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchCustomFoods200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchCustomFoods200Response(
        customFoods: SearchCustomFoods200ResponseCustomFoodsInner.listFromJson(json[r'customFoods']).toSet(),
        type: mapValueOfType<String>(json, r'type')!,
        offset: mapValueOfType<int>(json, r'offset')!,
        number: mapValueOfType<int>(json, r'number')!,
      );
    }
    return null;
  }

  static List<SearchCustomFoods200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchCustomFoods200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchCustomFoods200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchCustomFoods200Response> mapFromJson(dynamic json) {
    final map = <String, SearchCustomFoods200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchCustomFoods200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchCustomFoods200Response-objects as value to a dart map
  static Map<String, List<SearchCustomFoods200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchCustomFoods200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchCustomFoods200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'customFoods',
    'type',
    'offset',
    'number',
  };
}

