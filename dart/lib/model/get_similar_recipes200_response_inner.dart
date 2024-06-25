//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetSimilarRecipes200ResponseInner {
  /// Returns a new [GetSimilarRecipes200ResponseInner] instance.
  GetSimilarRecipes200ResponseInner({
    required this.id,
    required this.title,
    required this.imageType,
    required this.readyInMinutes,
    required this.servings,
    required this.sourceUrl,
  });

  int id;

  String title;

  String imageType;

  int readyInMinutes;

  num servings;

  String sourceUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetSimilarRecipes200ResponseInner &&
    other.id == id &&
    other.title == title &&
    other.imageType == imageType &&
    other.readyInMinutes == readyInMinutes &&
    other.servings == servings &&
    other.sourceUrl == sourceUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (title.hashCode) +
    (imageType.hashCode) +
    (readyInMinutes.hashCode) +
    (servings.hashCode) +
    (sourceUrl.hashCode);

  @override
  String toString() => 'GetSimilarRecipes200ResponseInner[id=$id, title=$title, imageType=$imageType, readyInMinutes=$readyInMinutes, servings=$servings, sourceUrl=$sourceUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'title'] = this.title;
      json[r'imageType'] = this.imageType;
      json[r'readyInMinutes'] = this.readyInMinutes;
      json[r'servings'] = this.servings;
      json[r'sourceUrl'] = this.sourceUrl;
    return json;
  }

  /// Returns a new [GetSimilarRecipes200ResponseInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetSimilarRecipes200ResponseInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetSimilarRecipes200ResponseInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetSimilarRecipes200ResponseInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetSimilarRecipes200ResponseInner(
        id: mapValueOfType<int>(json, r'id')!,
        title: mapValueOfType<String>(json, r'title')!,
        imageType: mapValueOfType<String>(json, r'imageType')!,
        readyInMinutes: mapValueOfType<int>(json, r'readyInMinutes')!,
        servings: num.parse('${json[r'servings']}'),
        sourceUrl: mapValueOfType<String>(json, r'sourceUrl')!,
      );
    }
    return null;
  }

  static List<GetSimilarRecipes200ResponseInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetSimilarRecipes200ResponseInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetSimilarRecipes200ResponseInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetSimilarRecipes200ResponseInner> mapFromJson(dynamic json) {
    final map = <String, GetSimilarRecipes200ResponseInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetSimilarRecipes200ResponseInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetSimilarRecipes200ResponseInner-objects as value to a dart map
  static Map<String, List<GetSimilarRecipes200ResponseInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetSimilarRecipes200ResponseInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetSimilarRecipes200ResponseInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'title',
    'imageType',
    'readyInMinutes',
    'servings',
    'sourceUrl',
  };
}

