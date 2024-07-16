//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner {
  /// Returns a new [AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner] instance.
  AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner({
    required this.id,
    required this.name,
    required this.localizedName,
    required this.image,
  });

  int id;

  String name;

  String localizedName;

  String image;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner &&
    other.id == id &&
    other.name == name &&
    other.localizedName == localizedName &&
    other.image == image;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name.hashCode) +
    (localizedName.hashCode) +
    (image.hashCode);

  @override
  String toString() => 'AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner[id=$id, name=$name, localizedName=$localizedName, image=$image]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'name'] = this.name;
      json[r'localizedName'] = this.localizedName;
      json[r'image'] = this.image;
    return json;
  }

  /// Returns a new [AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner(
        id: mapValueOfType<int>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        localizedName: mapValueOfType<String>(json, r'localizedName')!,
        image: mapValueOfType<String>(json, r'image')!,
      );
    }
    return null;
  }

  static List<AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner> mapFromJson(dynamic json) {
    final map = <String, AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner-objects as value to a dart map
  static Map<String, List<AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
    'localizedName',
    'image',
  };
}

