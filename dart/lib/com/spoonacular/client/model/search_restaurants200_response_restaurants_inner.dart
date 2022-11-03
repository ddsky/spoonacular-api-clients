//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchRestaurants200ResponseRestaurantsInner {
  /// Returns a new [SearchRestaurants200ResponseRestaurantsInner] instance.
  SearchRestaurants200ResponseRestaurantsInner({
    this.id,
    this.name,
    this.phoneNumber,
    this.address,
    this.type,
    this.description,
    this.localHours,
    this.cuisines = const [],
    this.foodPhotos = const [],
    this.logoPhotos = const [],
    this.storePhotos = const [],
    this.dollarSigns,
    this.pickupEnabled,
    this.deliveryEnabled,
    this.isOpen,
    this.offersFirstPartyDelivery,
    this.offersThirdPartyDelivery,
    this.miles,
    this.weightedRatingValue,
    this.aggregatedRatingCount,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? phoneNumber;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SearchRestaurants200ResponseRestaurantsInnerAddress? address;

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
  String? description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SearchRestaurants200ResponseRestaurantsInnerLocalHours? localHours;

  List<String> cuisines;

  List<String> foodPhotos;

  List<String> logoPhotos;

  List<Object> storePhotos;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? dollarSigns;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? pickupEnabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? deliveryEnabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isOpen;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? offersFirstPartyDelivery;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? offersThirdPartyDelivery;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? miles;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? weightedRatingValue;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? aggregatedRatingCount;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchRestaurants200ResponseRestaurantsInner &&
     other.id == id &&
     other.name == name &&
     other.phoneNumber == phoneNumber &&
     other.address == address &&
     other.type == type &&
     other.description == description &&
     other.localHours == localHours &&
     other.cuisines == cuisines &&
     other.foodPhotos == foodPhotos &&
     other.logoPhotos == logoPhotos &&
     other.storePhotos == storePhotos &&
     other.dollarSigns == dollarSigns &&
     other.pickupEnabled == pickupEnabled &&
     other.deliveryEnabled == deliveryEnabled &&
     other.isOpen == isOpen &&
     other.offersFirstPartyDelivery == offersFirstPartyDelivery &&
     other.offersThirdPartyDelivery == offersThirdPartyDelivery &&
     other.miles == miles &&
     other.weightedRatingValue == weightedRatingValue &&
     other.aggregatedRatingCount == aggregatedRatingCount;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (phoneNumber == null ? 0 : phoneNumber!.hashCode) +
    (address == null ? 0 : address!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (localHours == null ? 0 : localHours!.hashCode) +
    (cuisines.hashCode) +
    (foodPhotos.hashCode) +
    (logoPhotos.hashCode) +
    (storePhotos.hashCode) +
    (dollarSigns == null ? 0 : dollarSigns!.hashCode) +
    (pickupEnabled == null ? 0 : pickupEnabled!.hashCode) +
    (deliveryEnabled == null ? 0 : deliveryEnabled!.hashCode) +
    (isOpen == null ? 0 : isOpen!.hashCode) +
    (offersFirstPartyDelivery == null ? 0 : offersFirstPartyDelivery!.hashCode) +
    (offersThirdPartyDelivery == null ? 0 : offersThirdPartyDelivery!.hashCode) +
    (miles == null ? 0 : miles!.hashCode) +
    (weightedRatingValue == null ? 0 : weightedRatingValue!.hashCode) +
    (aggregatedRatingCount == null ? 0 : aggregatedRatingCount!.hashCode);

  @override
  String toString() => 'SearchRestaurants200ResponseRestaurantsInner[id=$id, name=$name, phoneNumber=$phoneNumber, address=$address, type=$type, description=$description, localHours=$localHours, cuisines=$cuisines, foodPhotos=$foodPhotos, logoPhotos=$logoPhotos, storePhotos=$storePhotos, dollarSigns=$dollarSigns, pickupEnabled=$pickupEnabled, deliveryEnabled=$deliveryEnabled, isOpen=$isOpen, offersFirstPartyDelivery=$offersFirstPartyDelivery, offersThirdPartyDelivery=$offersThirdPartyDelivery, miles=$miles, weightedRatingValue=$weightedRatingValue, aggregatedRatingCount=$aggregatedRatingCount]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (id != null) {
      _json[r'_id'] = id;
    } else {
      _json[r'_id'] = null;
    }
    if (name != null) {
      _json[r'name'] = name;
    } else {
      _json[r'name'] = null;
    }
    if (phoneNumber != null) {
      _json[r'phone_number'] = phoneNumber;
    } else {
      _json[r'phone_number'] = null;
    }
    if (address != null) {
      _json[r'address'] = address;
    } else {
      _json[r'address'] = null;
    }
    if (type != null) {
      _json[r'type'] = type;
    } else {
      _json[r'type'] = null;
    }
    if (description != null) {
      _json[r'description'] = description;
    } else {
      _json[r'description'] = null;
    }
    if (localHours != null) {
      _json[r'local_hours'] = localHours;
    } else {
      _json[r'local_hours'] = null;
    }
      _json[r'cuisines'] = cuisines;
      _json[r'food_photos'] = foodPhotos;
      _json[r'logo_photos'] = logoPhotos;
      _json[r'store_photos'] = storePhotos;
    if (dollarSigns != null) {
      _json[r'dollar_signs'] = dollarSigns;
    } else {
      _json[r'dollar_signs'] = null;
    }
    if (pickupEnabled != null) {
      _json[r'pickup_enabled'] = pickupEnabled;
    } else {
      _json[r'pickup_enabled'] = null;
    }
    if (deliveryEnabled != null) {
      _json[r'delivery_enabled'] = deliveryEnabled;
    } else {
      _json[r'delivery_enabled'] = null;
    }
    if (isOpen != null) {
      _json[r'is_open'] = isOpen;
    } else {
      _json[r'is_open'] = null;
    }
    if (offersFirstPartyDelivery != null) {
      _json[r'offers_first_party_delivery'] = offersFirstPartyDelivery;
    } else {
      _json[r'offers_first_party_delivery'] = null;
    }
    if (offersThirdPartyDelivery != null) {
      _json[r'offers_third_party_delivery'] = offersThirdPartyDelivery;
    } else {
      _json[r'offers_third_party_delivery'] = null;
    }
    if (miles != null) {
      _json[r'miles'] = miles;
    } else {
      _json[r'miles'] = null;
    }
    if (weightedRatingValue != null) {
      _json[r'weighted_rating_value'] = weightedRatingValue;
    } else {
      _json[r'weighted_rating_value'] = null;
    }
    if (aggregatedRatingCount != null) {
      _json[r'aggregated_rating_count'] = aggregatedRatingCount;
    } else {
      _json[r'aggregated_rating_count'] = null;
    }
    return _json;
  }

  /// Returns a new [SearchRestaurants200ResponseRestaurantsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchRestaurants200ResponseRestaurantsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchRestaurants200ResponseRestaurantsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchRestaurants200ResponseRestaurantsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchRestaurants200ResponseRestaurantsInner(
        id: mapValueOfType<String>(json, r'_id'),
        name: mapValueOfType<String>(json, r'name'),
        phoneNumber: mapValueOfType<int>(json, r'phone_number'),
        address: SearchRestaurants200ResponseRestaurantsInnerAddress.fromJson(json[r'address']),
        type: mapValueOfType<String>(json, r'type'),
        description: mapValueOfType<String>(json, r'description'),
        localHours: SearchRestaurants200ResponseRestaurantsInnerLocalHours.fromJson(json[r'local_hours']),
        cuisines: json[r'cuisines'] is List
            ? (json[r'cuisines'] as List).cast<String>()
            : const [],
        foodPhotos: json[r'food_photos'] is List
            ? (json[r'food_photos'] as List).cast<String>()
            : const [],
        logoPhotos: json[r'logo_photos'] is List
            ? (json[r'logo_photos'] as List).cast<String>()
            : const [],
        storePhotos: Object.listFromJson(json[r'store_photos']) ?? const [],
        dollarSigns: mapValueOfType<int>(json, r'dollar_signs'),
        pickupEnabled: mapValueOfType<bool>(json, r'pickup_enabled'),
        deliveryEnabled: mapValueOfType<bool>(json, r'delivery_enabled'),
        isOpen: mapValueOfType<bool>(json, r'is_open'),
        offersFirstPartyDelivery: mapValueOfType<bool>(json, r'offers_first_party_delivery'),
        offersThirdPartyDelivery: mapValueOfType<bool>(json, r'offers_third_party_delivery'),
        miles: json[r'miles'] == null
            ? null
            : num.parse(json[r'miles'].toString()),
        weightedRatingValue: json[r'weighted_rating_value'] == null
            ? null
            : num.parse(json[r'weighted_rating_value'].toString()),
        aggregatedRatingCount: mapValueOfType<int>(json, r'aggregated_rating_count'),
      );
    }
    return null;
  }

  static List<SearchRestaurants200ResponseRestaurantsInner>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchRestaurants200ResponseRestaurantsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchRestaurants200ResponseRestaurantsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchRestaurants200ResponseRestaurantsInner> mapFromJson(dynamic json) {
    final map = <String, SearchRestaurants200ResponseRestaurantsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchRestaurants200ResponseRestaurantsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchRestaurants200ResponseRestaurantsInner-objects as value to a dart map
  static Map<String, List<SearchRestaurants200ResponseRestaurantsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchRestaurants200ResponseRestaurantsInner>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchRestaurants200ResponseRestaurantsInner.listFromJson(entry.value, growable: growable,);
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

