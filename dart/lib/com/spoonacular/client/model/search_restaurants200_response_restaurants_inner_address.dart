//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchRestaurants200ResponseRestaurantsInnerAddress {
  /// Returns a new [SearchRestaurants200ResponseRestaurantsInnerAddress] instance.
  SearchRestaurants200ResponseRestaurantsInnerAddress({
    this.streetAddr,
    this.city,
    this.state,
    this.zipcode,
    this.country,
    this.lat,
    this.lon,
    this.streetAddr2,
    this.latitude,
    this.longitude,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? streetAddr;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? city;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? state;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? zipcode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? country;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? lat;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? lon;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? streetAddr2;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? latitude;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? longitude;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchRestaurants200ResponseRestaurantsInnerAddress &&
     other.streetAddr == streetAddr &&
     other.city == city &&
     other.state == state &&
     other.zipcode == zipcode &&
     other.country == country &&
     other.lat == lat &&
     other.lon == lon &&
     other.streetAddr2 == streetAddr2 &&
     other.latitude == latitude &&
     other.longitude == longitude;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (streetAddr == null ? 0 : streetAddr!.hashCode) +
    (city == null ? 0 : city!.hashCode) +
    (state == null ? 0 : state!.hashCode) +
    (zipcode == null ? 0 : zipcode!.hashCode) +
    (country == null ? 0 : country!.hashCode) +
    (lat == null ? 0 : lat!.hashCode) +
    (lon == null ? 0 : lon!.hashCode) +
    (streetAddr2 == null ? 0 : streetAddr2!.hashCode) +
    (latitude == null ? 0 : latitude!.hashCode) +
    (longitude == null ? 0 : longitude!.hashCode);

  @override
  String toString() => 'SearchRestaurants200ResponseRestaurantsInnerAddress[streetAddr=$streetAddr, city=$city, state=$state, zipcode=$zipcode, country=$country, lat=$lat, lon=$lon, streetAddr2=$streetAddr2, latitude=$latitude, longitude=$longitude]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (streetAddr != null) {
      _json[r'street_addr'] = streetAddr;
    } else {
      _json[r'street_addr'] = null;
    }
    if (city != null) {
      _json[r'city'] = city;
    } else {
      _json[r'city'] = null;
    }
    if (state != null) {
      _json[r'state'] = state;
    } else {
      _json[r'state'] = null;
    }
    if (zipcode != null) {
      _json[r'zipcode'] = zipcode;
    } else {
      _json[r'zipcode'] = null;
    }
    if (country != null) {
      _json[r'country'] = country;
    } else {
      _json[r'country'] = null;
    }
    if (lat != null) {
      _json[r'lat'] = lat;
    } else {
      _json[r'lat'] = null;
    }
    if (lon != null) {
      _json[r'lon'] = lon;
    } else {
      _json[r'lon'] = null;
    }
    if (streetAddr2 != null) {
      _json[r'street_addr_2'] = streetAddr2;
    } else {
      _json[r'street_addr_2'] = null;
    }
    if (latitude != null) {
      _json[r'latitude'] = latitude;
    } else {
      _json[r'latitude'] = null;
    }
    if (longitude != null) {
      _json[r'longitude'] = longitude;
    } else {
      _json[r'longitude'] = null;
    }
    return _json;
  }

  /// Returns a new [SearchRestaurants200ResponseRestaurantsInnerAddress] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchRestaurants200ResponseRestaurantsInnerAddress? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchRestaurants200ResponseRestaurantsInnerAddress[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchRestaurants200ResponseRestaurantsInnerAddress[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchRestaurants200ResponseRestaurantsInnerAddress(
        streetAddr: mapValueOfType<String>(json, r'street_addr'),
        city: mapValueOfType<String>(json, r'city'),
        state: mapValueOfType<String>(json, r'state'),
        zipcode: mapValueOfType<String>(json, r'zipcode'),
        country: mapValueOfType<String>(json, r'country'),
        lat: json[r'lat'] == null
            ? null
            : num.parse(json[r'lat'].toString()),
        lon: json[r'lon'] == null
            ? null
            : num.parse(json[r'lon'].toString()),
        streetAddr2: mapValueOfType<String>(json, r'street_addr_2'),
        latitude: json[r'latitude'] == null
            ? null
            : num.parse(json[r'latitude'].toString()),
        longitude: json[r'longitude'] == null
            ? null
            : num.parse(json[r'longitude'].toString()),
      );
    }
    return null;
  }

  static List<SearchRestaurants200ResponseRestaurantsInnerAddress>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchRestaurants200ResponseRestaurantsInnerAddress>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchRestaurants200ResponseRestaurantsInnerAddress.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchRestaurants200ResponseRestaurantsInnerAddress> mapFromJson(dynamic json) {
    final map = <String, SearchRestaurants200ResponseRestaurantsInnerAddress>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchRestaurants200ResponseRestaurantsInnerAddress.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchRestaurants200ResponseRestaurantsInnerAddress-objects as value to a dart map
  static Map<String, List<SearchRestaurants200ResponseRestaurantsInnerAddress>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchRestaurants200ResponseRestaurantsInnerAddress>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchRestaurants200ResponseRestaurantsInnerAddress.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

