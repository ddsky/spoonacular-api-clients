//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ComputeGlycemicLoad200ResponseIngredientsInner {
  /// Returns a new [ComputeGlycemicLoad200ResponseIngredientsInner] instance.
  ComputeGlycemicLoad200ResponseIngredientsInner({
    required this.id,
    required this.original,
    required this.glycemicIndex,
    required this.glycemicLoad,
  });

  int id;

  String original;

  num glycemicIndex;

  num glycemicLoad;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ComputeGlycemicLoad200ResponseIngredientsInner &&
    other.id == id &&
    other.original == original &&
    other.glycemicIndex == glycemicIndex &&
    other.glycemicLoad == glycemicLoad;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (original.hashCode) +
    (glycemicIndex.hashCode) +
    (glycemicLoad.hashCode);

  @override
  String toString() => 'ComputeGlycemicLoad200ResponseIngredientsInner[id=$id, original=$original, glycemicIndex=$glycemicIndex, glycemicLoad=$glycemicLoad]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'original'] = this.original;
      json[r'glycemicIndex'] = this.glycemicIndex;
      json[r'glycemicLoad'] = this.glycemicLoad;
    return json;
  }

  /// Returns a new [ComputeGlycemicLoad200ResponseIngredientsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ComputeGlycemicLoad200ResponseIngredientsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ComputeGlycemicLoad200ResponseIngredientsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ComputeGlycemicLoad200ResponseIngredientsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ComputeGlycemicLoad200ResponseIngredientsInner(
        id: mapValueOfType<int>(json, r'id')!,
        original: mapValueOfType<String>(json, r'original')!,
        glycemicIndex: num.parse('${json[r'glycemicIndex']}'),
        glycemicLoad: num.parse('${json[r'glycemicLoad']}'),
      );
    }
    return null;
  }

  static List<ComputeGlycemicLoad200ResponseIngredientsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ComputeGlycemicLoad200ResponseIngredientsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ComputeGlycemicLoad200ResponseIngredientsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ComputeGlycemicLoad200ResponseIngredientsInner> mapFromJson(dynamic json) {
    final map = <String, ComputeGlycemicLoad200ResponseIngredientsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ComputeGlycemicLoad200ResponseIngredientsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ComputeGlycemicLoad200ResponseIngredientsInner-objects as value to a dart map
  static Map<String, List<ComputeGlycemicLoad200ResponseIngredientsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ComputeGlycemicLoad200ResponseIngredientsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ComputeGlycemicLoad200ResponseIngredientsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'original',
    'glycemicIndex',
    'glycemicLoad',
  };
}

