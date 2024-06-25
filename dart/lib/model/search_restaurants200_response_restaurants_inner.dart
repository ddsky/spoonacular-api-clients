//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

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

  List<String> storePhotos;

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
    _deepEquality.equals(other.cuisines, cuisines) &&
    _deepEquality.equals(other.foodPhotos, foodPhotos) &&
    _deepEquality.equals(other.logoPhotos, logoPhotos) &&
    _deepEquality.equals(other.storePhotos, storePhotos) &&
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
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'_id'] = this.id;
    } else {
      json[r'_id'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.phoneNumber != null) {
      json[r'phone_number'] = this.phoneNumber;
    } else {
      json[r'phone_number'] = null;
    }
    if (this.address != null) {
      json[r'address'] = this.address;
    } else {
      json[r'address'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.localHours != null) {
      json[r'local_hours'] = this.localHours;
    } else {
      json[r'local_hours'] = null;
    }
      json[r'cuisines'] = this.cuisines;
      json[r'food_photos'] = this.foodPhotos;
      json[r'logo_photos'] = this.logoPhotos;
      json[r'store_photos'] = this.storePhotos;
    if (this.dollarSigns != null) {
      json[r'dollar_signs'] = this.dollarSigns;
    } else {
      json[r'dollar_signs'] = null;
    }
    if (this.pickupEnabled != null) {
      json[r'pickup_enabled'] = this.pickupEnabled;
    } else {
      json[r'pickup_enabled'] = null;
    }
    if (this.deliveryEnabled != null) {
      json[r'delivery_enabled'] = this.deliveryEnabled;
    } else {
      json[r'delivery_enabled'] = null;
    }
    if (this.isOpen != null) {
      json[r'is_open'] = this.isOpen;
    } else {
      json[r'is_open'] = null;
    }
    if (this.offersFirstPartyDelivery != null) {
      json[r'offers_first_party_delivery'] = this.offersFirstPartyDelivery;
    } else {
      json[r'offers_first_party_delivery'] = null;
    }
    if (this.offersThirdPartyDelivery != null) {
      json[r'offers_third_party_delivery'] = this.offersThirdPartyDelivery;
    } else {
      json[r'offers_third_party_delivery'] = null;
    }
    if (this.miles != null) {
      json[r'miles'] = this.miles;
    } else {
      json[r'miles'] = null;
    }
    if (this.weightedRatingValue != null) {
      json[r'weighted_rating_value'] = this.weightedRatingValue;
    } else {
      json[r'weighted_rating_value'] = null;
    }
    if (this.aggregatedRatingCount != null) {
      json[r'aggregated_rating_count'] = this.aggregatedRatingCount;
    } else {
      json[r'aggregated_rating_count'] = null;
    }
    return json;
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
        cuisines: json[r'cuisines'] is Iterable
            ? (json[r'cuisines'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        foodPhotos: json[r'food_photos'] is Iterable
            ? (json[r'food_photos'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        logoPhotos: json[r'logo_photos'] is Iterable
            ? (json[r'logo_photos'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        storePhotos: json[r'store_photos'] is Iterable
            ? (json[r'store_photos'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        dollarSigns: mapValueOfType<int>(json, r'dollar_signs'),
        pickupEnabled: mapValueOfType<bool>(json, r'pickup_enabled'),
        deliveryEnabled: mapValueOfType<bool>(json, r'delivery_enabled'),
        isOpen: mapValueOfType<bool>(json, r'is_open'),
        offersFirstPartyDelivery: mapValueOfType<bool>(json, r'offers_first_party_delivery'),
        offersThirdPartyDelivery: mapValueOfType<bool>(json, r'offers_third_party_delivery'),
        miles: num.parse('${json[r'miles']}'),
        weightedRatingValue: num.parse('${json[r'weighted_rating_value']}'),
        aggregatedRatingCount: mapValueOfType<int>(json, r'aggregated_rating_count'),
      );
    }
    return null;
  }

  static List<SearchRestaurants200ResponseRestaurantsInner> listFromJson(dynamic json, {bool growable = false,}) {
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
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchRestaurants200ResponseRestaurantsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

