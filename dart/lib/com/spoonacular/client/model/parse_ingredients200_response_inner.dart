//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ParseIngredients200ResponseInner {
  /// Returns a new [ParseIngredients200ResponseInner] instance.
  ParseIngredients200ResponseInner({
    required this.id,
    required this.original,
    required this.originalName,
    required this.name,
    required this.nameClean,
    required this.amount,
    required this.unit,
    required this.unitShort,
    required this.unitLong,
    this.possibleUnits = const [],
    required this.estimatedCost,
    required this.consistency,
    required this.aisle,
    required this.image,
    this.meta = const [],
    required this.nutrition,
  });

  int id;

  String original;

  String originalName;

  String name;

  String nameClean;

  num amount;

  String unit;

  String unitShort;

  String unitLong;

  List<String> possibleUnits;

  ParseIngredients200ResponseInnerEstimatedCost estimatedCost;

  String consistency;

  String aisle;

  String image;

  List<String> meta;

  ParseIngredients200ResponseInnerNutrition nutrition;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ParseIngredients200ResponseInner &&
     other.id == id &&
     other.original == original &&
     other.originalName == originalName &&
     other.name == name &&
     other.nameClean == nameClean &&
     other.amount == amount &&
     other.unit == unit &&
     other.unitShort == unitShort &&
     other.unitLong == unitLong &&
     other.possibleUnits == possibleUnits &&
     other.estimatedCost == estimatedCost &&
     other.consistency == consistency &&
     other.aisle == aisle &&
     other.image == image &&
     other.meta == meta &&
     other.nutrition == nutrition;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (original.hashCode) +
    (originalName.hashCode) +
    (name.hashCode) +
    (nameClean.hashCode) +
    (amount.hashCode) +
    (unit.hashCode) +
    (unitShort.hashCode) +
    (unitLong.hashCode) +
    (possibleUnits.hashCode) +
    (estimatedCost.hashCode) +
    (consistency.hashCode) +
    (aisle.hashCode) +
    (image.hashCode) +
    (meta.hashCode) +
    (nutrition.hashCode);

  @override
  String toString() => 'ParseIngredients200ResponseInner[id=$id, original=$original, originalName=$originalName, name=$name, nameClean=$nameClean, amount=$amount, unit=$unit, unitShort=$unitShort, unitLong=$unitLong, possibleUnits=$possibleUnits, estimatedCost=$estimatedCost, consistency=$consistency, aisle=$aisle, image=$image, meta=$meta, nutrition=$nutrition]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'id'] = id;
      _json[r'original'] = original;
      _json[r'originalName'] = originalName;
      _json[r'name'] = name;
      _json[r'nameClean'] = nameClean;
      _json[r'amount'] = amount;
      _json[r'unit'] = unit;
      _json[r'unitShort'] = unitShort;
      _json[r'unitLong'] = unitLong;
      _json[r'possibleUnits'] = possibleUnits;
      _json[r'estimatedCost'] = estimatedCost;
      _json[r'consistency'] = consistency;
      _json[r'aisle'] = aisle;
      _json[r'image'] = image;
      _json[r'meta'] = meta;
      _json[r'nutrition'] = nutrition;
    return _json;
  }

  /// Returns a new [ParseIngredients200ResponseInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ParseIngredients200ResponseInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ParseIngredients200ResponseInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ParseIngredients200ResponseInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ParseIngredients200ResponseInner(
        id: mapValueOfType<int>(json, r'id')!,
        original: mapValueOfType<String>(json, r'original')!,
        originalName: mapValueOfType<String>(json, r'originalName')!,
        name: mapValueOfType<String>(json, r'name')!,
        nameClean: mapValueOfType<String>(json, r'nameClean')!,
        amount: json[r'amount'] == null
            ? null
            : num.parse(json[r'amount'].toString()),
        unit: mapValueOfType<String>(json, r'unit')!,
        unitShort: mapValueOfType<String>(json, r'unitShort')!,
        unitLong: mapValueOfType<String>(json, r'unitLong')!,
        possibleUnits: json[r'possibleUnits'] is List
            ? (json[r'possibleUnits'] as List).cast<String>()
            : const [],
        estimatedCost: ParseIngredients200ResponseInnerEstimatedCost.fromJson(json[r'estimatedCost'])!,
        consistency: mapValueOfType<String>(json, r'consistency')!,
        aisle: mapValueOfType<String>(json, r'aisle')!,
        image: mapValueOfType<String>(json, r'image')!,
        meta: json[r'meta'] is List
            ? (json[r'meta'] as List).cast<String>()
            : const [],
        nutrition: ParseIngredients200ResponseInnerNutrition.fromJson(json[r'nutrition'])!,
      );
    }
    return null;
  }

  static List<ParseIngredients200ResponseInner>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ParseIngredients200ResponseInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ParseIngredients200ResponseInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ParseIngredients200ResponseInner> mapFromJson(dynamic json) {
    final map = <String, ParseIngredients200ResponseInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ParseIngredients200ResponseInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ParseIngredients200ResponseInner-objects as value to a dart map
  static Map<String, List<ParseIngredients200ResponseInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ParseIngredients200ResponseInner>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ParseIngredients200ResponseInner.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'original',
    'originalName',
    'name',
    'nameClean',
    'amount',
    'unit',
    'unitShort',
    'unitLong',
    'possibleUnits',
    'estimatedCost',
    'consistency',
    'aisle',
    'image',
    'meta',
    'nutrition',
  };
}

