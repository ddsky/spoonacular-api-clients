//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner {
  /// Returns a new [SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner] instance.
  SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner({
    required this.aisle,
    required this.amount,
    required this.id,
    required this.image,
    this.meta = const [],
    required this.name,
    required this.original,
    required this.originalName,
    required this.unit,
    required this.unitLong,
    required this.unitShort,
  });

  String aisle;

  num amount;

  int id;

  String image;

  List<String> meta;

  String name;

  String original;

  String originalName;

  String unit;

  String unitLong;

  String unitShort;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner &&
     other.aisle == aisle &&
     other.amount == amount &&
     other.id == id &&
     other.image == image &&
     other.meta == meta &&
     other.name == name &&
     other.original == original &&
     other.originalName == originalName &&
     other.unit == unit &&
     other.unitLong == unitLong &&
     other.unitShort == unitShort;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (aisle.hashCode) +
    (amount.hashCode) +
    (id.hashCode) +
    (image.hashCode) +
    (meta.hashCode) +
    (name.hashCode) +
    (original.hashCode) +
    (originalName.hashCode) +
    (unit.hashCode) +
    (unitLong.hashCode) +
    (unitShort.hashCode);

  @override
  String toString() => 'SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner[aisle=$aisle, amount=$amount, id=$id, image=$image, meta=$meta, name=$name, original=$original, originalName=$originalName, unit=$unit, unitLong=$unitLong, unitShort=$unitShort]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'aisle'] = aisle;
      _json[r'amount'] = amount;
      _json[r'id'] = id;
      _json[r'image'] = image;
      _json[r'meta'] = meta;
      _json[r'name'] = name;
      _json[r'original'] = original;
      _json[r'originalName'] = originalName;
      _json[r'unit'] = unit;
      _json[r'unitLong'] = unitLong;
      _json[r'unitShort'] = unitShort;
    return _json;
  }

  /// Returns a new [SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner(
        aisle: mapValueOfType<String>(json, r'aisle')!,
        amount: json[r'amount'] == null
            ? null
            : num.parse(json[r'amount'].toString()),
        id: mapValueOfType<int>(json, r'id')!,
        image: mapValueOfType<String>(json, r'image')!,
        meta: json[r'meta'] is List
            ? (json[r'meta'] as List).cast<String>()
            : const [],
        name: mapValueOfType<String>(json, r'name')!,
        original: mapValueOfType<String>(json, r'original')!,
        originalName: mapValueOfType<String>(json, r'originalName')!,
        unit: mapValueOfType<String>(json, r'unit')!,
        unitLong: mapValueOfType<String>(json, r'unitLong')!,
        unitShort: mapValueOfType<String>(json, r'unitShort')!,
      );
    }
    return null;
  }

  static List<SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner> mapFromJson(dynamic json) {
    final map = <String, SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner-objects as value to a dart map
  static Map<String, List<SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner.listFromJson(entry.value, growable: growable,);
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
    'id',
    'image',
    'name',
    'original',
    'originalName',
    'unit',
    'unitLong',
    'unitShort',
  };
}

