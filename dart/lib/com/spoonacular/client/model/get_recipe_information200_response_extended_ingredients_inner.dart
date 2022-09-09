//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetRecipeInformation200ResponseExtendedIngredientsInner {
  /// Returns a new [GetRecipeInformation200ResponseExtendedIngredientsInner] instance.
  GetRecipeInformation200ResponseExtendedIngredientsInner({
    required this.aisle,
    required this.amount,
    required this.consitency,
    required this.id,
    required this.image,
    this.measures,
    this.meta = const [],
    required this.name,
    required this.original,
    required this.originalName,
    required this.unit,
  });

  String aisle;

  num amount;

  String consitency;

  int id;

  String image;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GetRecipeInformation200ResponseExtendedIngredientsInnerMeasures? measures;

  List<String> meta;

  String name;

  String original;

  String originalName;

  String unit;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetRecipeInformation200ResponseExtendedIngredientsInner &&
     other.aisle == aisle &&
     other.amount == amount &&
     other.consitency == consitency &&
     other.id == id &&
     other.image == image &&
     other.measures == measures &&
     other.meta == meta &&
     other.name == name &&
     other.original == original &&
     other.originalName == originalName &&
     other.unit == unit;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (aisle.hashCode) +
    (amount.hashCode) +
    (consitency.hashCode) +
    (id.hashCode) +
    (image.hashCode) +
    (measures == null ? 0 : measures!.hashCode) +
    (meta.hashCode) +
    (name.hashCode) +
    (original.hashCode) +
    (originalName.hashCode) +
    (unit.hashCode);

  @override
  String toString() => 'GetRecipeInformation200ResponseExtendedIngredientsInner[aisle=$aisle, amount=$amount, consitency=$consitency, id=$id, image=$image, measures=$measures, meta=$meta, name=$name, original=$original, originalName=$originalName, unit=$unit]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'aisle'] = aisle;
      _json[r'amount'] = amount;
      _json[r'consitency'] = consitency;
      _json[r'id'] = id;
      _json[r'image'] = image;
    if (measures != null) {
      _json[r'measures'] = measures;
    } else {
      _json[r'measures'] = null;
    }
      _json[r'meta'] = meta;
      _json[r'name'] = name;
      _json[r'original'] = original;
      _json[r'originalName'] = originalName;
      _json[r'unit'] = unit;
    return _json;
  }

  /// Returns a new [GetRecipeInformation200ResponseExtendedIngredientsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetRecipeInformation200ResponseExtendedIngredientsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetRecipeInformation200ResponseExtendedIngredientsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetRecipeInformation200ResponseExtendedIngredientsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetRecipeInformation200ResponseExtendedIngredientsInner(
        aisle: mapValueOfType<String>(json, r'aisle')!,
        amount: json[r'amount'] == null
            ? null
            : num.parse(json[r'amount'].toString()),
        consitency: mapValueOfType<String>(json, r'consitency')!,
        id: mapValueOfType<int>(json, r'id')!,
        image: mapValueOfType<String>(json, r'image')!,
        measures: GetRecipeInformation200ResponseExtendedIngredientsInnerMeasures.fromJson(json[r'measures']),
        meta: json[r'meta'] is List
            ? (json[r'meta'] as List).cast<String>()
            : const [],
        name: mapValueOfType<String>(json, r'name')!,
        original: mapValueOfType<String>(json, r'original')!,
        originalName: mapValueOfType<String>(json, r'originalName')!,
        unit: mapValueOfType<String>(json, r'unit')!,
      );
    }
    return null;
  }

  static List<GetRecipeInformation200ResponseExtendedIngredientsInner>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetRecipeInformation200ResponseExtendedIngredientsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetRecipeInformation200ResponseExtendedIngredientsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetRecipeInformation200ResponseExtendedIngredientsInner> mapFromJson(dynamic json) {
    final map = <String, GetRecipeInformation200ResponseExtendedIngredientsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetRecipeInformation200ResponseExtendedIngredientsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetRecipeInformation200ResponseExtendedIngredientsInner-objects as value to a dart map
  static Map<String, List<GetRecipeInformation200ResponseExtendedIngredientsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetRecipeInformation200ResponseExtendedIngredientsInner>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetRecipeInformation200ResponseExtendedIngredientsInner.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'aisle',
    'amount',
    'consitency',
    'id',
    'image',
    'name',
    'original',
    'originalName',
    'unit',
  };
}

