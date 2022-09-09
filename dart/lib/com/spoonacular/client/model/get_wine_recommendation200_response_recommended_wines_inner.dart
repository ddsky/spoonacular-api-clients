//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetWineRecommendation200ResponseRecommendedWinesInner {
  /// Returns a new [GetWineRecommendation200ResponseRecommendedWinesInner] instance.
  GetWineRecommendation200ResponseRecommendedWinesInner({
    required this.id,
    required this.title,
    required this.averageRating,
    required this.description,
    required this.imageUrl,
    required this.link,
    required this.price,
    required this.ratingCount,
    required this.score,
  });

  int id;

  String title;

  num averageRating;

  String description;

  String imageUrl;

  String link;

  String price;

  int ratingCount;

  num score;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetWineRecommendation200ResponseRecommendedWinesInner &&
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
    (description.hashCode) +
    (imageUrl.hashCode) +
    (link.hashCode) +
    (price.hashCode) +
    (ratingCount.hashCode) +
    (score.hashCode);

  @override
  String toString() => 'GetWineRecommendation200ResponseRecommendedWinesInner[id=$id, title=$title, averageRating=$averageRating, description=$description, imageUrl=$imageUrl, link=$link, price=$price, ratingCount=$ratingCount, score=$score]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'id'] = id;
      _json[r'title'] = title;
      _json[r'averageRating'] = averageRating;
      _json[r'description'] = description;
      _json[r'imageUrl'] = imageUrl;
      _json[r'link'] = link;
      _json[r'price'] = price;
      _json[r'ratingCount'] = ratingCount;
      _json[r'score'] = score;
    return _json;
  }

  /// Returns a new [GetWineRecommendation200ResponseRecommendedWinesInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetWineRecommendation200ResponseRecommendedWinesInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetWineRecommendation200ResponseRecommendedWinesInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetWineRecommendation200ResponseRecommendedWinesInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetWineRecommendation200ResponseRecommendedWinesInner(
        id: mapValueOfType<int>(json, r'id')!,
        title: mapValueOfType<String>(json, r'title')!,
        averageRating: json[r'averageRating'] == null
            ? null
            : num.parse(json[r'averageRating'].toString()),
        description: mapValueOfType<String>(json, r'description')!,
        imageUrl: mapValueOfType<String>(json, r'imageUrl')!,
        link: mapValueOfType<String>(json, r'link')!,
        price: mapValueOfType<String>(json, r'price')!,
        ratingCount: mapValueOfType<int>(json, r'ratingCount')!,
        score: json[r'score'] == null
            ? null
            : num.parse(json[r'score'].toString()),
      );
    }
    return null;
  }

  static List<GetWineRecommendation200ResponseRecommendedWinesInner>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetWineRecommendation200ResponseRecommendedWinesInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetWineRecommendation200ResponseRecommendedWinesInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetWineRecommendation200ResponseRecommendedWinesInner> mapFromJson(dynamic json) {
    final map = <String, GetWineRecommendation200ResponseRecommendedWinesInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetWineRecommendation200ResponseRecommendedWinesInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetWineRecommendation200ResponseRecommendedWinesInner-objects as value to a dart map
  static Map<String, List<GetWineRecommendation200ResponseRecommendedWinesInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetWineRecommendation200ResponseRecommendedWinesInner>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetWineRecommendation200ResponseRecommendedWinesInner.listFromJson(entry.value, growable: growable,);
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
    'averageRating',
    'description',
    'imageUrl',
    'link',
    'price',
    'ratingCount',
    'score',
  };
}

