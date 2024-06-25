//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchAllFood200ResponseSearchResultsInnerResultsInner {
  /// Returns a new [SearchAllFood200ResponseSearchResultsInnerResultsInner] instance.
  SearchAllFood200ResponseSearchResultsInnerResultsInner({
    required this.id,
    required this.name,
    required this.image,
    required this.link,
    required this.type,
    required this.relevance,
    required this.content,
  });

  String id;

  String name;

  String? image;

  String? link;

  String type;

  num relevance;

  String? content;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchAllFood200ResponseSearchResultsInnerResultsInner &&
    other.id == id &&
    other.name == name &&
    other.image == image &&
    other.link == link &&
    other.type == type &&
    other.relevance == relevance &&
    other.content == content;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name.hashCode) +
    (image == null ? 0 : image!.hashCode) +
    (link == null ? 0 : link!.hashCode) +
    (type.hashCode) +
    (relevance.hashCode) +
    (content == null ? 0 : content!.hashCode);

  @override
  String toString() => 'SearchAllFood200ResponseSearchResultsInnerResultsInner[id=$id, name=$name, image=$image, link=$link, type=$type, relevance=$relevance, content=$content]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'name'] = this.name;
    if (this.image != null) {
      json[r'image'] = this.image;
    } else {
      json[r'image'] = null;
    }
    if (this.link != null) {
      json[r'link'] = this.link;
    } else {
      json[r'link'] = null;
    }
      json[r'type'] = this.type;
      json[r'relevance'] = this.relevance;
    if (this.content != null) {
      json[r'content'] = this.content;
    } else {
      json[r'content'] = null;
    }
    return json;
  }

  /// Returns a new [SearchAllFood200ResponseSearchResultsInnerResultsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchAllFood200ResponseSearchResultsInnerResultsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchAllFood200ResponseSearchResultsInnerResultsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchAllFood200ResponseSearchResultsInnerResultsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchAllFood200ResponseSearchResultsInnerResultsInner(
        id: mapValueOfType<String>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        image: mapValueOfType<String>(json, r'image'),
        link: mapValueOfType<String>(json, r'link'),
        type: mapValueOfType<String>(json, r'type')!,
        relevance: num.parse('${json[r'relevance']}'),
        content: mapValueOfType<String>(json, r'content'),
      );
    }
    return null;
  }

  static List<SearchAllFood200ResponseSearchResultsInnerResultsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchAllFood200ResponseSearchResultsInnerResultsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchAllFood200ResponseSearchResultsInnerResultsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchAllFood200ResponseSearchResultsInnerResultsInner> mapFromJson(dynamic json) {
    final map = <String, SearchAllFood200ResponseSearchResultsInnerResultsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchAllFood200ResponseSearchResultsInnerResultsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchAllFood200ResponseSearchResultsInnerResultsInner-objects as value to a dart map
  static Map<String, List<SearchAllFood200ResponseSearchResultsInnerResultsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchAllFood200ResponseSearchResultsInnerResultsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchAllFood200ResponseSearchResultsInnerResultsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
    'image',
    'link',
    'type',
    'relevance',
    'content',
  };
}

