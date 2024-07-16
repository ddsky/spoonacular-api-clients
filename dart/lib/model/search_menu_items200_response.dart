//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchMenuItems200Response {
  /// Returns a new [SearchMenuItems200Response] instance.
  SearchMenuItems200Response({
    this.menuItems = const {},
    required this.totalMenuItems,
    required this.type,
    required this.offset,
    required this.number,
  });

  Set<MenuItem> menuItems;

  int totalMenuItems;

  String type;

  int offset;

  int number;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchMenuItems200Response &&
    _deepEquality.equals(other.menuItems, menuItems) &&
    other.totalMenuItems == totalMenuItems &&
    other.type == type &&
    other.offset == offset &&
    other.number == number;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (menuItems.hashCode) +
    (totalMenuItems.hashCode) +
    (type.hashCode) +
    (offset.hashCode) +
    (number.hashCode);

  @override
  String toString() => 'SearchMenuItems200Response[menuItems=$menuItems, totalMenuItems=$totalMenuItems, type=$type, offset=$offset, number=$number]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'menuItems'] = this.menuItems.toList(growable: false);
      json[r'totalMenuItems'] = this.totalMenuItems;
      json[r'type'] = this.type;
      json[r'offset'] = this.offset;
      json[r'number'] = this.number;
    return json;
  }

  /// Returns a new [SearchMenuItems200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchMenuItems200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchMenuItems200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchMenuItems200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchMenuItems200Response(
        menuItems: MenuItem.listFromJson(json[r'menuItems']).toSet(),
        totalMenuItems: mapValueOfType<int>(json, r'totalMenuItems')!,
        type: mapValueOfType<String>(json, r'type')!,
        offset: mapValueOfType<int>(json, r'offset')!,
        number: mapValueOfType<int>(json, r'number')!,
      );
    }
    return null;
  }

  static List<SearchMenuItems200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchMenuItems200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchMenuItems200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchMenuItems200Response> mapFromJson(dynamic json) {
    final map = <String, SearchMenuItems200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchMenuItems200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchMenuItems200Response-objects as value to a dart map
  static Map<String, List<SearchMenuItems200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchMenuItems200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchMenuItems200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'menuItems',
    'totalMenuItems',
    'type',
    'offset',
    'number',
  };
}

