//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetRecipePriceBreakdownByID200Response {
  /// Returns a new [GetRecipePriceBreakdownByID200Response] instance.
  GetRecipePriceBreakdownByID200Response({
    this.ingredients = const {},
    required this.totalCost,
    required this.totalCostPerServing,
  });

  Set<GetRecipePriceBreakdownByID200ResponseIngredientsInner> ingredients;

  num totalCost;

  num totalCostPerServing;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetRecipePriceBreakdownByID200Response &&
    _deepEquality.equals(other.ingredients, ingredients) &&
    other.totalCost == totalCost &&
    other.totalCostPerServing == totalCostPerServing;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ingredients.hashCode) +
    (totalCost.hashCode) +
    (totalCostPerServing.hashCode);

  @override
  String toString() => 'GetRecipePriceBreakdownByID200Response[ingredients=$ingredients, totalCost=$totalCost, totalCostPerServing=$totalCostPerServing]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'ingredients'] = this.ingredients.toList(growable: false);
      json[r'totalCost'] = this.totalCost;
      json[r'totalCostPerServing'] = this.totalCostPerServing;
    return json;
  }

  /// Returns a new [GetRecipePriceBreakdownByID200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetRecipePriceBreakdownByID200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetRecipePriceBreakdownByID200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetRecipePriceBreakdownByID200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetRecipePriceBreakdownByID200Response(
        ingredients: GetRecipePriceBreakdownByID200ResponseIngredientsInner.listFromJson(json[r'ingredients']).toSet(),
        totalCost: num.parse('${json[r'totalCost']}'),
        totalCostPerServing: num.parse('${json[r'totalCostPerServing']}'),
      );
    }
    return null;
  }

  static List<GetRecipePriceBreakdownByID200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetRecipePriceBreakdownByID200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetRecipePriceBreakdownByID200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetRecipePriceBreakdownByID200Response> mapFromJson(dynamic json) {
    final map = <String, GetRecipePriceBreakdownByID200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetRecipePriceBreakdownByID200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetRecipePriceBreakdownByID200Response-objects as value to a dart map
  static Map<String, List<GetRecipePriceBreakdownByID200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetRecipePriceBreakdownByID200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetRecipePriceBreakdownByID200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'ingredients',
    'totalCost',
    'totalCostPerServing',
  };
}

