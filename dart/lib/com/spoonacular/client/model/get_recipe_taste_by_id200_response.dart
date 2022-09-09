//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetRecipeTasteByID200Response {
  /// Returns a new [GetRecipeTasteByID200Response] instance.
  GetRecipeTasteByID200Response({
    required this.sweetness,
    required this.saltiness,
    required this.sourness,
    required this.bitterness,
    required this.savoriness,
    required this.fattiness,
    required this.spiciness,
  });

  num sweetness;

  num saltiness;

  num sourness;

  num bitterness;

  num savoriness;

  num fattiness;

  num spiciness;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetRecipeTasteByID200Response &&
     other.sweetness == sweetness &&
     other.saltiness == saltiness &&
     other.sourness == sourness &&
     other.bitterness == bitterness &&
     other.savoriness == savoriness &&
     other.fattiness == fattiness &&
     other.spiciness == spiciness;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (sweetness.hashCode) +
    (saltiness.hashCode) +
    (sourness.hashCode) +
    (bitterness.hashCode) +
    (savoriness.hashCode) +
    (fattiness.hashCode) +
    (spiciness.hashCode);

  @override
  String toString() => 'GetRecipeTasteByID200Response[sweetness=$sweetness, saltiness=$saltiness, sourness=$sourness, bitterness=$bitterness, savoriness=$savoriness, fattiness=$fattiness, spiciness=$spiciness]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'sweetness'] = sweetness;
      _json[r'saltiness'] = saltiness;
      _json[r'sourness'] = sourness;
      _json[r'bitterness'] = bitterness;
      _json[r'savoriness'] = savoriness;
      _json[r'fattiness'] = fattiness;
      _json[r'spiciness'] = spiciness;
    return _json;
  }

  /// Returns a new [GetRecipeTasteByID200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetRecipeTasteByID200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetRecipeTasteByID200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetRecipeTasteByID200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetRecipeTasteByID200Response(
        sweetness: json[r'sweetness'] == null
            ? null
            : num.parse(json[r'sweetness'].toString()),
        saltiness: json[r'saltiness'] == null
            ? null
            : num.parse(json[r'saltiness'].toString()),
        sourness: json[r'sourness'] == null
            ? null
            : num.parse(json[r'sourness'].toString()),
        bitterness: json[r'bitterness'] == null
            ? null
            : num.parse(json[r'bitterness'].toString()),
        savoriness: json[r'savoriness'] == null
            ? null
            : num.parse(json[r'savoriness'].toString()),
        fattiness: json[r'fattiness'] == null
            ? null
            : num.parse(json[r'fattiness'].toString()),
        spiciness: json[r'spiciness'] == null
            ? null
            : num.parse(json[r'spiciness'].toString()),
      );
    }
    return null;
  }

  static List<GetRecipeTasteByID200Response>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetRecipeTasteByID200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetRecipeTasteByID200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetRecipeTasteByID200Response> mapFromJson(dynamic json) {
    final map = <String, GetRecipeTasteByID200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetRecipeTasteByID200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetRecipeTasteByID200Response-objects as value to a dart map
  static Map<String, List<GetRecipeTasteByID200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetRecipeTasteByID200Response>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetRecipeTasteByID200Response.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'sweetness',
    'saltiness',
    'sourness',
    'bitterness',
    'savoriness',
    'fattiness',
    'spiciness',
  };
}

