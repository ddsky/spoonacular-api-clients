//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetRecipeInformation200ResponseWinePairingProductMatchesInner {
  /// Returns a new [GetRecipeInformation200ResponseWinePairingProductMatchesInner] instance.
  GetRecipeInformation200ResponseWinePairingProductMatchesInner({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.averageRating,
    required this.ratingCount,
    required this.score,
    required this.link,
  });

  int id;

  String title;

  String description;

  String price;

  String imageUrl;

  num averageRating;

  int ratingCount;

  num score;

  String link;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetRecipeInformation200ResponseWinePairingProductMatchesInner &&
     other.id == id &&
     other.title == title &&
     other.description == description &&
     other.price == price &&
     other.imageUrl == imageUrl &&
     other.averageRating == averageRating &&
     other.ratingCount == ratingCount &&
     other.score == score &&
     other.link == link;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (title.hashCode) +
    (description.hashCode) +
    (price.hashCode) +
    (imageUrl.hashCode) +
    (averageRating.hashCode) +
    (ratingCount.hashCode) +
    (score.hashCode) +
    (link.hashCode);

  @override
  String toString() => 'GetRecipeInformation200ResponseWinePairingProductMatchesInner[id=$id, title=$title, description=$description, price=$price, imageUrl=$imageUrl, averageRating=$averageRating, ratingCount=$ratingCount, score=$score, link=$link]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'id'] = id;
      _json[r'title'] = title;
      _json[r'description'] = description;
      _json[r'price'] = price;
      _json[r'imageUrl'] = imageUrl;
      _json[r'averageRating'] = averageRating;
      _json[r'ratingCount'] = ratingCount;
      _json[r'score'] = score;
      _json[r'link'] = link;
    return _json;
  }

  /// Returns a new [GetRecipeInformation200ResponseWinePairingProductMatchesInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetRecipeInformation200ResponseWinePairingProductMatchesInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetRecipeInformation200ResponseWinePairingProductMatchesInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetRecipeInformation200ResponseWinePairingProductMatchesInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetRecipeInformation200ResponseWinePairingProductMatchesInner(
        id: mapValueOfType<int>(json, r'id')!,
        title: mapValueOfType<String>(json, r'title')!,
        description: mapValueOfType<String>(json, r'description')!,
        price: mapValueOfType<String>(json, r'price')!,
        imageUrl: mapValueOfType<String>(json, r'imageUrl')!,
        averageRating: json[r'averageRating'] == null
            ? null
            : num.parse(json[r'averageRating'].toString()),
        ratingCount: mapValueOfType<int>(json, r'ratingCount')!,
        score: json[r'score'] == null
            ? null
            : num.parse(json[r'score'].toString()),
        link: mapValueOfType<String>(json, r'link')!,
      );
    }
    return null;
  }

  static List<GetRecipeInformation200ResponseWinePairingProductMatchesInner>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetRecipeInformation200ResponseWinePairingProductMatchesInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetRecipeInformation200ResponseWinePairingProductMatchesInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetRecipeInformation200ResponseWinePairingProductMatchesInner> mapFromJson(dynamic json) {
    final map = <String, GetRecipeInformation200ResponseWinePairingProductMatchesInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetRecipeInformation200ResponseWinePairingProductMatchesInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetRecipeInformation200ResponseWinePairingProductMatchesInner-objects as value to a dart map
  static Map<String, List<GetRecipeInformation200ResponseWinePairingProductMatchesInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetRecipeInformation200ResponseWinePairingProductMatchesInner>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetRecipeInformation200ResponseWinePairingProductMatchesInner.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'title',
    'description',
    'price',
    'imageUrl',
    'averageRating',
    'ratingCount',
    'score',
    'link',
  };
}

