//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ComputeGlycemicLoad200Response {
  /// Returns a new [ComputeGlycemicLoad200Response] instance.
  ComputeGlycemicLoad200Response({
    required this.totalGlycemicLoad,
    this.ingredients = const {},
  });

  num totalGlycemicLoad;

  Set<ComputeGlycemicLoad200ResponseIngredientsInner> ingredients;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ComputeGlycemicLoad200Response &&
    other.totalGlycemicLoad == totalGlycemicLoad &&
    _deepEquality.equals(other.ingredients, ingredients);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (totalGlycemicLoad.hashCode) +
    (ingredients.hashCode);

  @override
  String toString() => 'ComputeGlycemicLoad200Response[totalGlycemicLoad=$totalGlycemicLoad, ingredients=$ingredients]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'totalGlycemicLoad'] = this.totalGlycemicLoad;
      json[r'ingredients'] = this.ingredients.toList(growable: false);
    return json;
  }

  /// Returns a new [ComputeGlycemicLoad200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ComputeGlycemicLoad200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ComputeGlycemicLoad200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ComputeGlycemicLoad200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ComputeGlycemicLoad200Response(
        totalGlycemicLoad: num.parse('${json[r'totalGlycemicLoad']}'),
        ingredients: ComputeGlycemicLoad200ResponseIngredientsInner.listFromJson(json[r'ingredients']).toSet(),
      );
    }
    return null;
  }

  static List<ComputeGlycemicLoad200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ComputeGlycemicLoad200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ComputeGlycemicLoad200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ComputeGlycemicLoad200Response> mapFromJson(dynamic json) {
    final map = <String, ComputeGlycemicLoad200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ComputeGlycemicLoad200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ComputeGlycemicLoad200Response-objects as value to a dart map
  static Map<String, List<ComputeGlycemicLoad200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ComputeGlycemicLoad200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ComputeGlycemicLoad200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'totalGlycemicLoad',
    'ingredients',
  };
}

