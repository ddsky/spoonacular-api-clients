//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetRecipePriceBreakdownByID200ResponseIngredientsInner {
  /// Returns a new [GetRecipePriceBreakdownByID200ResponseIngredientsInner] instance.
  GetRecipePriceBreakdownByID200ResponseIngredientsInner({
    this.amount,
    required this.image,
    required this.name,
    required this.price,
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

  num price;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetRecipePriceBreakdownByID200ResponseIngredientsInner &&
    other.amount == amount &&
    other.image == image &&
    other.name == name &&
    other.price == price;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (amount == null ? 0 : amount!.hashCode) +
    (image.hashCode) +
    (name.hashCode) +
    (price.hashCode);

  @override
  String toString() => 'GetRecipePriceBreakdownByID200ResponseIngredientsInner[amount=$amount, image=$image, name=$name, price=$price]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.amount != null) {
      json[r'amount'] = this.amount;
    } else {
      json[r'amount'] = null;
    }
      json[r'image'] = this.image;
      json[r'name'] = this.name;
      json[r'price'] = this.price;
    return json;
  }

  /// Returns a new [GetRecipePriceBreakdownByID200ResponseIngredientsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetRecipePriceBreakdownByID200ResponseIngredientsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetRecipePriceBreakdownByID200ResponseIngredientsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetRecipePriceBreakdownByID200ResponseIngredientsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetRecipePriceBreakdownByID200ResponseIngredientsInner(
        amount: GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount.fromJson(json[r'amount']),
        image: mapValueOfType<String>(json, r'image')!,
        name: mapValueOfType<String>(json, r'name')!,
        price: num.parse('${json[r'price']}'),
      );
    }
    return null;
  }

  static List<GetRecipePriceBreakdownByID200ResponseIngredientsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetRecipePriceBreakdownByID200ResponseIngredientsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetRecipePriceBreakdownByID200ResponseIngredientsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetRecipePriceBreakdownByID200ResponseIngredientsInner> mapFromJson(dynamic json) {
    final map = <String, GetRecipePriceBreakdownByID200ResponseIngredientsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetRecipePriceBreakdownByID200ResponseIngredientsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetRecipePriceBreakdownByID200ResponseIngredientsInner-objects as value to a dart map
  static Map<String, List<GetRecipePriceBreakdownByID200ResponseIngredientsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetRecipePriceBreakdownByID200ResponseIngredientsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetRecipePriceBreakdownByID200ResponseIngredientsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'image',
    'name',
    'price',
  };
}

