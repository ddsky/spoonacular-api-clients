//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchGroceryProductsByUPC200ResponseServings {
  /// Returns a new [SearchGroceryProductsByUPC200ResponseServings] instance.
  SearchGroceryProductsByUPC200ResponseServings({
    required this.number,
    required this.size,
    required this.unit,
  });

  num number;

  num size;

  String unit;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchGroceryProductsByUPC200ResponseServings &&
    other.number == number &&
    other.size == size &&
    other.unit == unit;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (number.hashCode) +
    (size.hashCode) +
    (unit.hashCode);

  @override
  String toString() => 'SearchGroceryProductsByUPC200ResponseServings[number=$number, size=$size, unit=$unit]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'number'] = this.number;
      json[r'size'] = this.size;
      json[r'unit'] = this.unit;
    return json;
  }

  /// Returns a new [SearchGroceryProductsByUPC200ResponseServings] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchGroceryProductsByUPC200ResponseServings? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchGroceryProductsByUPC200ResponseServings[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchGroceryProductsByUPC200ResponseServings[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchGroceryProductsByUPC200ResponseServings(
        number: num.parse('${json[r'number']}'),
        size: num.parse('${json[r'size']}'),
        unit: mapValueOfType<String>(json, r'unit')!,
      );
    }
    return null;
  }

  static List<SearchGroceryProductsByUPC200ResponseServings> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchGroceryProductsByUPC200ResponseServings>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchGroceryProductsByUPC200ResponseServings.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchGroceryProductsByUPC200ResponseServings> mapFromJson(dynamic json) {
    final map = <String, SearchGroceryProductsByUPC200ResponseServings>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchGroceryProductsByUPC200ResponseServings.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchGroceryProductsByUPC200ResponseServings-objects as value to a dart map
  static Map<String, List<SearchGroceryProductsByUPC200ResponseServings>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchGroceryProductsByUPC200ResponseServings>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchGroceryProductsByUPC200ResponseServings.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'number',
    'size',
    'unit',
  };
}

