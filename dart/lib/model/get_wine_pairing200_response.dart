//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetWinePairing200Response {
  /// Returns a new [GetWinePairing200Response] instance.
  GetWinePairing200Response({
    this.pairedWines = const [],
    required this.pairingText,
    this.productMatches = const {},
  });

  List<String> pairedWines;

  String pairingText;

  Set<GetWinePairing200ResponseProductMatchesInner> productMatches;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetWinePairing200Response &&
    _deepEquality.equals(other.pairedWines, pairedWines) &&
    other.pairingText == pairingText &&
    _deepEquality.equals(other.productMatches, productMatches);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (pairedWines.hashCode) +
    (pairingText.hashCode) +
    (productMatches.hashCode);

  @override
  String toString() => 'GetWinePairing200Response[pairedWines=$pairedWines, pairingText=$pairingText, productMatches=$productMatches]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'pairedWines'] = this.pairedWines;
      json[r'pairingText'] = this.pairingText;
      json[r'productMatches'] = this.productMatches.toList(growable: false);
    return json;
  }

  /// Returns a new [GetWinePairing200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetWinePairing200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetWinePairing200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetWinePairing200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetWinePairing200Response(
        pairedWines: json[r'pairedWines'] is Iterable
            ? (json[r'pairedWines'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        pairingText: mapValueOfType<String>(json, r'pairingText')!,
        productMatches: GetWinePairing200ResponseProductMatchesInner.listFromJson(json[r'productMatches']).toSet(),
      );
    }
    return null;
  }

  static List<GetWinePairing200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetWinePairing200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetWinePairing200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetWinePairing200Response> mapFromJson(dynamic json) {
    final map = <String, GetWinePairing200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetWinePairing200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetWinePairing200Response-objects as value to a dart map
  static Map<String, List<GetWinePairing200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetWinePairing200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetWinePairing200Response.listFromJson(entry.value, growable: growable,);
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

