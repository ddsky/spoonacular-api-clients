//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetRecipeIngredientsByID200ResponseIngredientsInner {
  /// Returns a new [GetRecipeIngredientsByID200ResponseIngredientsInner] instance.
  GetRecipeIngredientsByID200ResponseIngredientsInner({
    this.amount,
    required this.image,
    required this.name,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount? amount;

  String image;

  String name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetRecipeIngredientsByID200ResponseIngredientsInner &&
    other.amount == amount &&
    other.image == image &&
    other.name == name;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (amount == null ? 0 : amount!.hashCode) +
    (image.hashCode) +
    (name.hashCode);

  @override
  String toString() => 'GetRecipeIngredientsByID200ResponseIngredientsInner[amount=$amount, image=$image, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.amount != null) {
      json[r'amount'] = this.amount;
    } else {
      json[r'amount'] = null;
    }
      json[r'image'] = this.image;
      json[r'name'] = this.name;
    return json;
  }

  /// Returns a new [GetRecipeIngredientsByID200ResponseIngredientsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetRecipeIngredientsByID200ResponseIngredientsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetRecipeIngredientsByID200ResponseIngredientsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetRecipeIngredientsByID200ResponseIngredientsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetRecipeIngredientsByID200ResponseIngredientsInner(
        amount: GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount.fromJson(json[r'amount']),
        image: mapValueOfType<String>(json, r'image')!,
        name: mapValueOfType<String>(json, r'name')!,
      );
    }
    return null;
  }

  static List<GetRecipeIngredientsByID200ResponseIngredientsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetRecipeIngredientsByID200ResponseIngredientsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetRecipeIngredientsByID200ResponseIngredientsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetRecipeIngredientsByID200ResponseIngredientsInner> mapFromJson(dynamic json) {
    final map = <String, GetRecipeIngredientsByID200ResponseIngredientsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetRecipeIngredientsByID200ResponseIngredientsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetRecipeIngredientsByID200ResponseIngredientsInner-objects as value to a dart map
  static Map<String, List<GetRecipeIngredientsByID200ResponseIngredientsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetRecipeIngredientsByID200ResponseIngredientsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetRecipeIngredientsByID200ResponseIngredientsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'image',
    'name',
  };
}

