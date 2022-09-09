//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetRecipeInformation200ResponseWinePairing {
  /// Returns a new [GetRecipeInformation200ResponseWinePairing] instance.
  GetRecipeInformation200ResponseWinePairing({
    this.pairedWines = const [],
    required this.pairingText,
    this.productMatches = const {},
  });

  List<String> pairedWines;

  String pairingText;

  Set<GetRecipeInformation200ResponseWinePairingProductMatchesInner> productMatches;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetRecipeInformation200ResponseWinePairing &&
     other.pairedWines == pairedWines &&
     other.pairingText == pairingText &&
     other.productMatches == productMatches;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (pairedWines.hashCode) +
    (pairingText.hashCode) +
    (productMatches.hashCode);

  @override
  String toString() => 'GetRecipeInformation200ResponseWinePairing[pairedWines=$pairedWines, pairingText=$pairingText, productMatches=$productMatches]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'pairedWines'] = pairedWines;
      _json[r'pairingText'] = pairingText;
      _json[r'productMatches'] = productMatches;
    return _json;
  }

  /// Returns a new [GetRecipeInformation200ResponseWinePairing] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetRecipeInformation200ResponseWinePairing? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetRecipeInformation200ResponseWinePairing[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetRecipeInformation200ResponseWinePairing[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetRecipeInformation200ResponseWinePairing(
        pairedWines: json[r'pairedWines'] is List
            ? (json[r'pairedWines'] as List).cast<String>()
            : const [],
        pairingText: mapValueOfType<String>(json, r'pairingText')!,
        productMatches: GetRecipeInformation200ResponseWinePairingProductMatchesInner.listFromJson(json[r'productMatches'])!,
      );
    }
    return null;
  }

  static List<GetRecipeInformation200ResponseWinePairing>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetRecipeInformation200ResponseWinePairing>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetRecipeInformation200ResponseWinePairing.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetRecipeInformation200ResponseWinePairing> mapFromJson(dynamic json) {
    final map = <String, GetRecipeInformation200ResponseWinePairing>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetRecipeInformation200ResponseWinePairing.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetRecipeInformation200ResponseWinePairing-objects as value to a dart map
  static Map<String, List<GetRecipeInformation200ResponseWinePairing>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetRecipeInformation200ResponseWinePairing>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetRecipeInformation200ResponseWinePairing.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'pairedWines',
    'pairingText',
    'productMatches',
  };
}

