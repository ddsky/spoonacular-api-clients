//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetRecipeNutritionWidgetByID200ResponseBadInner {
  /// Returns a new [GetRecipeNutritionWidgetByID200ResponseBadInner] instance.
  GetRecipeNutritionWidgetByID200ResponseBadInner({
    required this.name,
    required this.amount,
    required this.indented,
    required this.percentOfDailyNeeds,
  });

  String name;

  String amount;

  bool indented;

  num percentOfDailyNeeds;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetRecipeNutritionWidgetByID200ResponseBadInner &&
     other.name == name &&
     other.amount == amount &&
     other.indented == indented &&
     other.percentOfDailyNeeds == percentOfDailyNeeds;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (amount.hashCode) +
    (indented.hashCode) +
    (percentOfDailyNeeds.hashCode);

  @override
  String toString() => 'GetRecipeNutritionWidgetByID200ResponseBadInner[name=$name, amount=$amount, indented=$indented, percentOfDailyNeeds=$percentOfDailyNeeds]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'name'] = name;
      _json[r'amount'] = amount;
      _json[r'indented'] = indented;
      _json[r'percentOfDailyNeeds'] = percentOfDailyNeeds;
    return _json;
  }

  /// Returns a new [GetRecipeNutritionWidgetByID200ResponseBadInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetRecipeNutritionWidgetByID200ResponseBadInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetRecipeNutritionWidgetByID200ResponseBadInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetRecipeNutritionWidgetByID200ResponseBadInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetRecipeNutritionWidgetByID200ResponseBadInner(
        name: mapValueOfType<String>(json, r'name')!,
        amount: mapValueOfType<String>(json, r'amount')!,
        indented: mapValueOfType<bool>(json, r'indented')!,
        percentOfDailyNeeds: json[r'percentOfDailyNeeds'] == null
            ? null
            : num.parse(json[r'percentOfDailyNeeds'].toString()),
      );
    }
    return null;
  }

  static List<GetRecipeNutritionWidgetByID200ResponseBadInner>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetRecipeNutritionWidgetByID200ResponseBadInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetRecipeNutritionWidgetByID200ResponseBadInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetRecipeNutritionWidgetByID200ResponseBadInner> mapFromJson(dynamic json) {
    final map = <String, GetRecipeNutritionWidgetByID200ResponseBadInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetRecipeNutritionWidgetByID200ResponseBadInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetRecipeNutritionWidgetByID200ResponseBadInner-objects as value to a dart map
  static Map<String, List<GetRecipeNutritionWidgetByID200ResponseBadInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetRecipeNutritionWidgetByID200ResponseBadInner>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetRecipeNutritionWidgetByID200ResponseBadInner.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'amount',
    'indented',
    'percentOfDailyNeeds',
  };
}

