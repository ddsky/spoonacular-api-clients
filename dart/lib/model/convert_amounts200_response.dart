//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ConvertAmounts200Response {
  /// Returns a new [ConvertAmounts200Response] instance.
  ConvertAmounts200Response({
    required this.sourceAmount,
    required this.sourceUnit,
    required this.targetAmount,
    required this.targetUnit,
    required this.answer,
  });

  num sourceAmount;

  String sourceUnit;

  num targetAmount;

  String targetUnit;

  String answer;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConvertAmounts200Response &&
    other.sourceAmount == sourceAmount &&
    other.sourceUnit == sourceUnit &&
    other.targetAmount == targetAmount &&
    other.targetUnit == targetUnit &&
    other.answer == answer;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (sourceAmount.hashCode) +
    (sourceUnit.hashCode) +
    (targetAmount.hashCode) +
    (targetUnit.hashCode) +
    (answer.hashCode);

  @override
  String toString() => 'ConvertAmounts200Response[sourceAmount=$sourceAmount, sourceUnit=$sourceUnit, targetAmount=$targetAmount, targetUnit=$targetUnit, answer=$answer]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'sourceAmount'] = this.sourceAmount;
      json[r'sourceUnit'] = this.sourceUnit;
      json[r'targetAmount'] = this.targetAmount;
      json[r'targetUnit'] = this.targetUnit;
      json[r'answer'] = this.answer;
    return json;
  }

  /// Returns a new [ConvertAmounts200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ConvertAmounts200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ConvertAmounts200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ConvertAmounts200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ConvertAmounts200Response(
        sourceAmount: num.parse('${json[r'sourceAmount']}'),
        sourceUnit: mapValueOfType<String>(json, r'sourceUnit')!,
        targetAmount: num.parse('${json[r'targetAmount']}'),
        targetUnit: mapValueOfType<String>(json, r'targetUnit')!,
        answer: mapValueOfType<String>(json, r'answer')!,
      );
    }
    return null;
  }

  static List<ConvertAmounts200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConvertAmounts200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConvertAmounts200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ConvertAmounts200Response> mapFromJson(dynamic json) {
    final map = <String, ConvertAmounts200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ConvertAmounts200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ConvertAmounts200Response-objects as value to a dart map
  static Map<String, List<ConvertAmounts200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ConvertAmounts200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ConvertAmounts200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'sourceAmount',
    'sourceUnit',
    'targetAmount',
    'targetUnit',
    'answer',
  };
}

