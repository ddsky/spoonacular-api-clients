//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetIngredientInformation200Response {
  /// Returns a new [GetIngredientInformation200Response] instance.
  GetIngredientInformation200Response({
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
    this.shoppingListUnits = const [],
    required this.aisle,
    required this.image,
    this.meta = const [],
    required this.nutrition,
    this.categoryPath = const [],
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

  List<String> shoppingListUnits;

  String aisle;

  String image;

  List<Object> meta;

  GetIngredientInformation200ResponseNutrition nutrition;

  List<String> categoryPath;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetIngredientInformation200Response &&
    other.id == id &&
    other.original == original &&
    other.originalName == originalName &&
    other.name == name &&
    other.nameClean == nameClean &&
    other.amount == amount &&
    other.unit == unit &&
    other.unitShort == unitShort &&
    other.unitLong == unitLong &&
    _deepEquality.equals(other.possibleUnits, possibleUnits) &&
    other.estimatedCost == estimatedCost &&
    other.consistency == consistency &&
    _deepEquality.equals(other.shoppingListUnits, shoppingListUnits) &&
    other.aisle == aisle &&
    other.image == image &&
    _deepEquality.equals(other.meta, meta) &&
    other.nutrition == nutrition &&
    _deepEquality.equals(other.categoryPath, categoryPath);

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
    (shoppingListUnits.hashCode) +
    (aisle.hashCode) +
    (image.hashCode) +
    (meta.hashCode) +
    (nutrition.hashCode) +
    (categoryPath.hashCode);

  @override
  String toString() => 'GetIngredientInformation200Response[id=$id, original=$original, originalName=$originalName, name=$name, nameClean=$nameClean, amount=$amount, unit=$unit, unitShort=$unitShort, unitLong=$unitLong, possibleUnits=$possibleUnits, estimatedCost=$estimatedCost, consistency=$consistency, shoppingListUnits=$shoppingListUnits, aisle=$aisle, image=$image, meta=$meta, nutrition=$nutrition, categoryPath=$categoryPath]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'original'] = this.original;
      json[r'originalName'] = this.originalName;
      json[r'name'] = this.name;
      json[r'nameClean'] = this.nameClean;
      json[r'amount'] = this.amount;
      json[r'unit'] = this.unit;
      json[r'unitShort'] = this.unitShort;
      json[r'unitLong'] = this.unitLong;
      json[r'possibleUnits'] = this.possibleUnits;
      json[r'estimatedCost'] = this.estimatedCost;
      json[r'consistency'] = this.consistency;
      json[r'shoppingListUnits'] = this.shoppingListUnits;
      json[r'aisle'] = this.aisle;
      json[r'image'] = this.image;
      json[r'meta'] = this.meta;
      json[r'nutrition'] = this.nutrition;
      json[r'categoryPath'] = this.categoryPath;
    return json;
  }

  /// Returns a new [GetIngredientInformation200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetIngredientInformation200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetIngredientInformation200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetIngredientInformation200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetIngredientInformation200Response(
        id: mapValueOfType<int>(json, r'id')!,
        original: mapValueOfType<String>(json, r'original')!,
        originalName: mapValueOfType<String>(json, r'originalName')!,
        name: mapValueOfType<String>(json, r'name')!,
        nameClean: mapValueOfType<String>(json, r'nameClean')!,
        amount: num.parse('${json[r'amount']}'),
        unit: mapValueOfType<String>(json, r'unit')!,
        unitShort: mapValueOfType<String>(json, r'unitShort')!,
        unitLong: mapValueOfType<String>(json, r'unitLong')!,
        possibleUnits: json[r'possibleUnits'] is Iterable
            ? (json[r'possibleUnits'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        estimatedCost: ParseIngredients200ResponseInnerEstimatedCost.fromJson(json[r'estimatedCost'])!,
        consistency: mapValueOfType<String>(json, r'consistency')!,
        shoppingListUnits: json[r'shoppingListUnits'] is Iterable
            ? (json[r'shoppingListUnits'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        aisle: mapValueOfType<String>(json, r'aisle')!,
        image: mapValueOfType<String>(json, r'image')!,
        meta: Object.listFromJson(json[r'meta']),
        nutrition: GetIngredientInformation200ResponseNutrition.fromJson(json[r'nutrition'])!,
        categoryPath: json[r'categoryPath'] is Iterable
            ? (json[r'categoryPath'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<GetIngredientInformation200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetIngredientInformation200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetIngredientInformation200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetIngredientInformation200Response> mapFromJson(dynamic json) {
    final map = <String, GetIngredientInformation200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetIngredientInformation200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetIngredientInformation200Response-objects as value to a dart map
  static Map<String, List<GetIngredientInformation200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetIngredientInformation200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetIngredientInformation200Response.listFromJson(entry.value, growable: growable,);
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
    'shoppingListUnits',
    'aisle',
    'image',
    'meta',
    'nutrition',
    'categoryPath',
  };
}

