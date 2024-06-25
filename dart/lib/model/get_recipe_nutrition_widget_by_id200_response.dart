//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetRecipeNutritionWidgetByID200Response {
  /// Returns a new [GetRecipeNutritionWidgetByID200Response] instance.
  GetRecipeNutritionWidgetByID200Response({
    required this.calories,
    required this.carbs,
    required this.fat,
    required this.protein,
    this.bad = const {},
    this.good = const {},
  });

  String calories;

  String carbs;

  String fat;

  String protein;

  Set<GetRecipeNutritionWidgetByID200ResponseBadInner> bad;

  Set<GetRecipeNutritionWidgetByID200ResponseGoodInner> good;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetRecipeNutritionWidgetByID200Response &&
    other.calories == calories &&
    other.carbs == carbs &&
    other.fat == fat &&
    other.protein == protein &&
    _deepEquality.equals(other.bad, bad) &&
    _deepEquality.equals(other.good, good);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (calories.hashCode) +
    (carbs.hashCode) +
    (fat.hashCode) +
    (protein.hashCode) +
    (bad.hashCode) +
    (good.hashCode);

  @override
  String toString() => 'GetRecipeNutritionWidgetByID200Response[calories=$calories, carbs=$carbs, fat=$fat, protein=$protein, bad=$bad, good=$good]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'calories'] = this.calories;
      json[r'carbs'] = this.carbs;
      json[r'fat'] = this.fat;
      json[r'protein'] = this.protein;
      json[r'bad'] = this.bad.toList(growable: false);
      json[r'good'] = this.good.toList(growable: false);
    return json;
  }

  /// Returns a new [GetRecipeNutritionWidgetByID200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetRecipeNutritionWidgetByID200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetRecipeNutritionWidgetByID200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetRecipeNutritionWidgetByID200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetRecipeNutritionWidgetByID200Response(
        calories: mapValueOfType<String>(json, r'calories')!,
        carbs: mapValueOfType<String>(json, r'carbs')!,
        fat: mapValueOfType<String>(json, r'fat')!,
        protein: mapValueOfType<String>(json, r'protein')!,
        bad: GetRecipeNutritionWidgetByID200ResponseBadInner.listFromJson(json[r'bad']).toSet(),
        good: GetRecipeNutritionWidgetByID200ResponseGoodInner.listFromJson(json[r'good']).toSet(),
      );
    }
    return null;
  }

  static List<GetRecipeNutritionWidgetByID200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetRecipeNutritionWidgetByID200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetRecipeNutritionWidgetByID200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetRecipeNutritionWidgetByID200Response> mapFromJson(dynamic json) {
    final map = <String, GetRecipeNutritionWidgetByID200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetRecipeNutritionWidgetByID200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetRecipeNutritionWidgetByID200Response-objects as value to a dart map
  static Map<String, List<GetRecipeNutritionWidgetByID200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetRecipeNutritionWidgetByID200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetRecipeNutritionWidgetByID200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'calories',
    'carbs',
    'fat',
    'protein',
    'bad',
    'good',
  };
}

