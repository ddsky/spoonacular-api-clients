//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchResult {
  /// Returns a new [SearchResult] instance.
  SearchResult({
    this.image,
    this.link,
    required this.name,
    this.type,
    this.kvtable,
    this.content,
    this.id,
    this.relevance,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? image;

  String? link;

  String name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kvtable;

  String? content;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? relevance;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchResult &&
    other.image == image &&
    other.link == link &&
    other.name == name &&
    other.type == type &&
    other.kvtable == kvtable &&
    other.content == content &&
    other.id == id &&
    other.relevance == relevance;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (image == null ? 0 : image!.hashCode) +
    (link == null ? 0 : link!.hashCode) +
    (name.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (kvtable == null ? 0 : kvtable!.hashCode) +
    (content == null ? 0 : content!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (relevance == null ? 0 : relevance!.hashCode);

  @override
  String toString() => 'SearchResult[image=$image, link=$link, name=$name, type=$type, kvtable=$kvtable, content=$content, id=$id, relevance=$relevance]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
      json[r'name'] = this.name;
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.kvtable != null) {
      json[r'kvtable'] = this.kvtable;
    } else {
      json[r'kvtable'] = null;
    }
    if (this.content != null) {
      json[r'content'] = this.content;
    } else {
      json[r'content'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.relevance != null) {
      json[r'relevance'] = this.relevance;
    } else {
      json[r'relevance'] = null;
    }
    return json;
  }

  /// Returns a new [SearchResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchResult(
        image: mapValueOfType<String>(json, r'image'),
        link: mapValueOfType<String>(json, r'link'),
        name: mapValueOfType<String>(json, r'name')!,
        type: mapValueOfType<String>(json, r'type'),
        kvtable: mapValueOfType<String>(json, r'kvtable'),
        content: mapValueOfType<String>(json, r'content'),
        id: mapValueOfType<int>(json, r'id'),
        relevance: num.parse('${json[r'relevance']}'),
      );
    }
    return null;
  }

  static List<SearchResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchResult> mapFromJson(dynamic json) {
    final map = <String, SearchResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchResult-objects as value to a dart map
  static Map<String, List<SearchResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
  };
}

