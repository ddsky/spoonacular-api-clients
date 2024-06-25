//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetWinePairing200ResponseProductMatchesInner {
  /// Returns a new [GetWinePairing200ResponseProductMatchesInner] instance.
  GetWinePairing200ResponseProductMatchesInner({
    required this.id,
    required this.title,
    required this.averageRating,
    this.description,
    required this.imageUrl,
    required this.link,
    required this.price,
    required this.ratingCount,
    required this.score,
  });

  int id;

  String title;

  num averageRating;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  String imageUrl;

  String link;

  String price;

  int ratingCount;

  num score;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetWinePairing200ResponseProductMatchesInner &&
    other.id == id &&
    other.title == title &&
    other.averageRating == averageRating &&
    other.description == description &&
    other.imageUrl == imageUrl &&
    other.link == link &&
    other.price == price &&
    other.ratingCount == ratingCount &&
    other.score == score;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (title.hashCode) +
    (averageRating.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (imageUrl.hashCode) +
    (link.hashCode) +
    (price.hashCode) +
    (ratingCount.hashCode) +
    (score.hashCode);

  @override
  String toString() => 'GetWinePairing200ResponseProductMatchesInner[id=$id, title=$title, averageRating=$averageRating, description=$description, imageUrl=$imageUrl, link=$link, price=$price, ratingCount=$ratingCount, score=$score]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'title'] = this.title;
      json[r'averageRating'] = this.averageRating;
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
      json[r'imageUrl'] = this.imageUrl;
      json[r'link'] = this.link;
      json[r'price'] = this.price;
      json[r'ratingCount'] = this.ratingCount;
      json[r'score'] = this.score;
    return json;
  }

  /// Returns a new [GetWinePairing200ResponseProductMatchesInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetWinePairing200ResponseProductMatchesInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetWinePairing200ResponseProductMatchesInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetWinePairing200ResponseProductMatchesInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetWinePairing200ResponseProductMatchesInner(
        id: mapValueOfType<int>(json, r'id')!,
        title: mapValueOfType<String>(json, r'title')!,
        averageRating: num.parse('${json[r'averageRating']}'),
        description: mapValueOfType<String>(json, r'description'),
        imageUrl: mapValueOfType<String>(json, r'imageUrl')!,
        link: mapValueOfType<String>(json, r'link')!,
        price: mapValueOfType<String>(json, r'price')!,
        ratingCount: mapValueOfType<int>(json, r'ratingCount')!,
        score: num.parse('${json[r'score']}'),
      );
    }
    return null;
  }

  static List<GetWinePairing200ResponseProductMatchesInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetWinePairing200ResponseProductMatchesInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetWinePairing200ResponseProductMatchesInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetWinePairing200ResponseProductMatchesInner> mapFromJson(dynamic json) {
    final map = <String, GetWinePairing200ResponseProductMatchesInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetWinePairing200ResponseProductMatchesInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetWinePairing200ResponseProductMatchesInner-objects as value to a dart map
  static Map<String, List<GetWinePairing200ResponseProductMatchesInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetWinePairing200ResponseProductMatchesInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetWinePairing200ResponseProductMatchesInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'title',
    'averageRating',
    'imageUrl',
    'link',
    'price',
    'ratingCount',
    'score',
  };
}

