//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RecipeInformationExtendedIngredientsInner {
  /// Returns a new [RecipeInformationExtendedIngredientsInner] instance.
  RecipeInformationExtendedIngredientsInner({
    required this.aisle,
    required this.amount,
    required this.consistency,
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

  String consistency;

  int id;

  String image;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RecipeInformationExtendedIngredientsInnerMeasures? measures;

  List<String> meta;

  String name;

  String original;

  String originalName;

  String unit;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RecipeInformationExtendedIngredientsInner &&
    other.aisle == aisle &&
    other.amount == amount &&
    other.consistency == consistency &&
    other.id == id &&
    other.image == image &&
    other.measures == measures &&
    _deepEquality.equals(other.meta, meta) &&
    other.name == name &&
    other.original == original &&
    other.originalName == originalName &&
    other.unit == unit;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (aisle.hashCode) +
    (amount.hashCode) +
    (consistency.hashCode) +
    (id.hashCode) +
    (image.hashCode) +
    (measures == null ? 0 : measures!.hashCode) +
    (meta.hashCode) +
    (name.hashCode) +
    (original.hashCode) +
    (originalName.hashCode) +
    (unit.hashCode);

  @override
  String toString() => 'RecipeInformationExtendedIngredientsInner[aisle=$aisle, amount=$amount, consistency=$consistency, id=$id, image=$image, measures=$measures, meta=$meta, name=$name, original=$original, originalName=$originalName, unit=$unit]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'aisle'] = this.aisle;
      json[r'amount'] = this.amount;
      json[r'consistency'] = this.consistency;
      json[r'id'] = this.id;
      json[r'image'] = this.image;
    if (this.measures != null) {
      json[r'measures'] = this.measures;
    } else {
      json[r'measures'] = null;
    }
      json[r'meta'] = this.meta;
      json[r'name'] = this.name;
      json[r'original'] = this.original;
      json[r'originalName'] = this.originalName;
      json[r'unit'] = this.unit;
    return json;
  }

  /// Returns a new [RecipeInformationExtendedIngredientsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RecipeInformationExtendedIngredientsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RecipeInformationExtendedIngredientsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RecipeInformationExtendedIngredientsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RecipeInformationExtendedIngredientsInner(
        aisle: mapValueOfType<String>(json, r'aisle')!,
        amount: num.parse('${json[r'amount']}'),
        consistency: mapValueOfType<String>(json, r'consistency')!,
        id: mapValueOfType<int>(json, r'id')!,
        image: mapValueOfType<String>(json, r'image')!,
        measures: RecipeInformationExtendedIngredientsInnerMeasures.fromJson(json[r'measures']),
        meta: json[r'meta'] is Iterable
            ? (json[r'meta'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        name: mapValueOfType<String>(json, r'name')!,
        original: mapValueOfType<String>(json, r'original')!,
        originalName: mapValueOfType<String>(json, r'originalName')!,
        unit: mapValueOfType<String>(json, r'unit')!,
      );
    }
    return null;
  }

  static List<RecipeInformationExtendedIngredientsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RecipeInformationExtendedIngredientsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RecipeInformationExtendedIngredientsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RecipeInformationExtendedIngredientsInner> mapFromJson(dynamic json) {
    final map = <String, RecipeInformationExtendedIngredientsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RecipeInformationExtendedIngredientsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RecipeInformationExtendedIngredientsInner-objects as value to a dart map
  static Map<String, List<RecipeInformationExtendedIngredientsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RecipeInformationExtendedIngredientsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RecipeInformationExtendedIngredientsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'aisle',
    'amount',
    'consistency',
    'id',
    'image',
    'name',
    'original',
    'originalName',
    'unit',
  };
}

