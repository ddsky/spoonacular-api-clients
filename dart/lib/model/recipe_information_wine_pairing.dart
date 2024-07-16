//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RecipeInformationWinePairing {
  /// Returns a new [RecipeInformationWinePairing] instance.
  RecipeInformationWinePairing({
    this.pairedWines = const [],
    this.pairingText,
    this.productMatches = const {},
  });

  List<String> pairedWines;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? pairingText;

  Set<RecipeInformationWinePairingProductMatchesInner> productMatches;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RecipeInformationWinePairing &&
    _deepEquality.equals(other.pairedWines, pairedWines) &&
    other.pairingText == pairingText &&
    _deepEquality.equals(other.productMatches, productMatches);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (pairedWines.hashCode) +
    (pairingText == null ? 0 : pairingText!.hashCode) +
    (productMatches.hashCode);

  @override
  String toString() => 'RecipeInformationWinePairing[pairedWines=$pairedWines, pairingText=$pairingText, productMatches=$productMatches]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'pairedWines'] = this.pairedWines;
    if (this.pairingText != null) {
      json[r'pairingText'] = this.pairingText;
    } else {
      json[r'pairingText'] = null;
    }
      json[r'productMatches'] = this.productMatches.toList(growable: false);
    return json;
  }

  /// Returns a new [RecipeInformationWinePairing] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RecipeInformationWinePairing? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RecipeInformationWinePairing[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RecipeInformationWinePairing[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RecipeInformationWinePairing(
        pairedWines: json[r'pairedWines'] is Iterable
            ? (json[r'pairedWines'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        pairingText: mapValueOfType<String>(json, r'pairingText'),
        productMatches: RecipeInformationWinePairingProductMatchesInner.listFromJson(json[r'productMatches']).toSet(),
      );
    }
    return null;
  }

  static List<RecipeInformationWinePairing> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RecipeInformationWinePairing>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RecipeInformationWinePairing.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RecipeInformationWinePairing> mapFromJson(dynamic json) {
    final map = <String, RecipeInformationWinePairing>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RecipeInformationWinePairing.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RecipeInformationWinePairing-objects as value to a dart map
  static Map<String, List<RecipeInformationWinePairing>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RecipeInformationWinePairing>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RecipeInformationWinePairing.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

