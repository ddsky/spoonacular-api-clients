//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetRecipeInformationBulk200ResponseInner {
  /// Returns a new [GetRecipeInformationBulk200ResponseInner] instance.
  GetRecipeInformationBulk200ResponseInner({
    required this.id,
    required this.title,
    required this.image,
    required this.imageType,
    required this.servings,
    required this.readyInMinutes,
    required this.license,
    required this.sourceName,
    required this.sourceUrl,
    required this.spoonacularSourceUrl,
    required this.aggregateLikes,
    required this.healthScore,
    required this.spoonacularScore,
    required this.pricePerServing,
    this.analyzedInstructions = const [],
    required this.cheap,
    required this.creditsText,
    this.cuisines = const [],
    required this.dairyFree,
    this.diets = const [],
    required this.gaps,
    required this.glutenFree,
    required this.instructions,
    required this.ketogenic,
    required this.lowFodmap,
    this.occasions = const [],
    required this.sustainable,
    required this.vegan,
    required this.vegetarian,
    required this.veryHealthy,
    required this.veryPopular,
    required this.whole30,
    required this.weightWatcherSmartPoints,
    this.dishTypes = const [],
    this.extendedIngredients = const {},
    required this.summary,
    required this.winePairing,
  });

  int id;

  String title;

  String image;

  String imageType;

  num servings;

  int readyInMinutes;

  String license;

  String sourceName;

  String sourceUrl;

  String spoonacularSourceUrl;

  int aggregateLikes;

  num healthScore;

  num spoonacularScore;

  num pricePerServing;

  List<String> analyzedInstructions;

  bool cheap;

  String creditsText;

  List<String> cuisines;

  bool dairyFree;

  List<String> diets;

  String gaps;

  bool glutenFree;

  String instructions;

  bool ketogenic;

  bool lowFodmap;

  List<String> occasions;

  bool sustainable;

  bool vegan;

  bool vegetarian;

  bool veryHealthy;

  bool veryPopular;

  bool whole30;

  num weightWatcherSmartPoints;

  List<String> dishTypes;

  Set<GetRecipeInformation200ResponseExtendedIngredientsInner> extendedIngredients;

  String summary;

  GetRecipeInformation200ResponseWinePairing winePairing;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetRecipeInformationBulk200ResponseInner &&
     other.id == id &&
     other.title == title &&
     other.image == image &&
     other.imageType == imageType &&
     other.servings == servings &&
     other.readyInMinutes == readyInMinutes &&
     other.license == license &&
     other.sourceName == sourceName &&
     other.sourceUrl == sourceUrl &&
     other.spoonacularSourceUrl == spoonacularSourceUrl &&
     other.aggregateLikes == aggregateLikes &&
     other.healthScore == healthScore &&
     other.spoonacularScore == spoonacularScore &&
     other.pricePerServing == pricePerServing &&
     other.analyzedInstructions == analyzedInstructions &&
     other.cheap == cheap &&
     other.creditsText == creditsText &&
     other.cuisines == cuisines &&
     other.dairyFree == dairyFree &&
     other.diets == diets &&
     other.gaps == gaps &&
     other.glutenFree == glutenFree &&
     other.instructions == instructions &&
     other.ketogenic == ketogenic &&
     other.lowFodmap == lowFodmap &&
     other.occasions == occasions &&
     other.sustainable == sustainable &&
     other.vegan == vegan &&
     other.vegetarian == vegetarian &&
     other.veryHealthy == veryHealthy &&
     other.veryPopular == veryPopular &&
     other.whole30 == whole30 &&
     other.weightWatcherSmartPoints == weightWatcherSmartPoints &&
     other.dishTypes == dishTypes &&
     other.extendedIngredients == extendedIngredients &&
     other.summary == summary &&
     other.winePairing == winePairing;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (title.hashCode) +
    (image.hashCode) +
    (imageType.hashCode) +
    (servings.hashCode) +
    (readyInMinutes.hashCode) +
    (license.hashCode) +
    (sourceName.hashCode) +
    (sourceUrl.hashCode) +
    (spoonacularSourceUrl.hashCode) +
    (aggregateLikes.hashCode) +
    (healthScore.hashCode) +
    (spoonacularScore.hashCode) +
    (pricePerServing.hashCode) +
    (analyzedInstructions.hashCode) +
    (cheap.hashCode) +
    (creditsText.hashCode) +
    (cuisines.hashCode) +
    (dairyFree.hashCode) +
    (diets.hashCode) +
    (gaps.hashCode) +
    (glutenFree.hashCode) +
    (instructions.hashCode) +
    (ketogenic.hashCode) +
    (lowFodmap.hashCode) +
    (occasions.hashCode) +
    (sustainable.hashCode) +
    (vegan.hashCode) +
    (vegetarian.hashCode) +
    (veryHealthy.hashCode) +
    (veryPopular.hashCode) +
    (whole30.hashCode) +
    (weightWatcherSmartPoints.hashCode) +
    (dishTypes.hashCode) +
    (extendedIngredients.hashCode) +
    (summary.hashCode) +
    (winePairing.hashCode);

  @override
  String toString() => 'GetRecipeInformationBulk200ResponseInner[id=$id, title=$title, image=$image, imageType=$imageType, servings=$servings, readyInMinutes=$readyInMinutes, license=$license, sourceName=$sourceName, sourceUrl=$sourceUrl, spoonacularSourceUrl=$spoonacularSourceUrl, aggregateLikes=$aggregateLikes, healthScore=$healthScore, spoonacularScore=$spoonacularScore, pricePerServing=$pricePerServing, analyzedInstructions=$analyzedInstructions, cheap=$cheap, creditsText=$creditsText, cuisines=$cuisines, dairyFree=$dairyFree, diets=$diets, gaps=$gaps, glutenFree=$glutenFree, instructions=$instructions, ketogenic=$ketogenic, lowFodmap=$lowFodmap, occasions=$occasions, sustainable=$sustainable, vegan=$vegan, vegetarian=$vegetarian, veryHealthy=$veryHealthy, veryPopular=$veryPopular, whole30=$whole30, weightWatcherSmartPoints=$weightWatcherSmartPoints, dishTypes=$dishTypes, extendedIngredients=$extendedIngredients, summary=$summary, winePairing=$winePairing]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'id'] = id;
      _json[r'title'] = title;
      _json[r'image'] = image;
      _json[r'imageType'] = imageType;
      _json[r'servings'] = servings;
      _json[r'readyInMinutes'] = readyInMinutes;
      _json[r'license'] = license;
      _json[r'sourceName'] = sourceName;
      _json[r'sourceUrl'] = sourceUrl;
      _json[r'spoonacularSourceUrl'] = spoonacularSourceUrl;
      _json[r'aggregateLikes'] = aggregateLikes;
      _json[r'healthScore'] = healthScore;
      _json[r'spoonacularScore'] = spoonacularScore;
      _json[r'pricePerServing'] = pricePerServing;
      _json[r'analyzedInstructions'] = analyzedInstructions;
      _json[r'cheap'] = cheap;
      _json[r'creditsText'] = creditsText;
      _json[r'cuisines'] = cuisines;
      _json[r'dairyFree'] = dairyFree;
      _json[r'diets'] = diets;
      _json[r'gaps'] = gaps;
      _json[r'glutenFree'] = glutenFree;
      _json[r'instructions'] = instructions;
      _json[r'ketogenic'] = ketogenic;
      _json[r'lowFodmap'] = lowFodmap;
      _json[r'occasions'] = occasions;
      _json[r'sustainable'] = sustainable;
      _json[r'vegan'] = vegan;
      _json[r'vegetarian'] = vegetarian;
      _json[r'veryHealthy'] = veryHealthy;
      _json[r'veryPopular'] = veryPopular;
      _json[r'whole30'] = whole30;
      _json[r'weightWatcherSmartPoints'] = weightWatcherSmartPoints;
      _json[r'dishTypes'] = dishTypes;
      _json[r'extendedIngredients'] = extendedIngredients;
      _json[r'summary'] = summary;
      _json[r'winePairing'] = winePairing;
    return _json;
  }

  /// Returns a new [GetRecipeInformationBulk200ResponseInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetRecipeInformationBulk200ResponseInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetRecipeInformationBulk200ResponseInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetRecipeInformationBulk200ResponseInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetRecipeInformationBulk200ResponseInner(
        id: mapValueOfType<int>(json, r'id')!,
        title: mapValueOfType<String>(json, r'title')!,
        image: mapValueOfType<String>(json, r'image')!,
        imageType: mapValueOfType<String>(json, r'imageType')!,
        servings: json[r'servings'] == null
            ? null
            : num.parse(json[r'servings'].toString()),
        readyInMinutes: mapValueOfType<int>(json, r'readyInMinutes')!,
        license: mapValueOfType<String>(json, r'license')!,
        sourceName: mapValueOfType<String>(json, r'sourceName')!,
        sourceUrl: mapValueOfType<String>(json, r'sourceUrl')!,
        spoonacularSourceUrl: mapValueOfType<String>(json, r'spoonacularSourceUrl')!,
        aggregateLikes: mapValueOfType<int>(json, r'aggregateLikes')!,
        healthScore: json[r'healthScore'] == null
            ? null
            : num.parse(json[r'healthScore'].toString()),
        spoonacularScore: json[r'spoonacularScore'] == null
            ? null
            : num.parse(json[r'spoonacularScore'].toString()),
        pricePerServing: json[r'pricePerServing'] == null
            ? null
            : num.parse(json[r'pricePerServing'].toString()),
        analyzedInstructions: json[r'analyzedInstructions'] is List
            ? (json[r'analyzedInstructions'] as List).cast<String>()
            : const [],
        cheap: mapValueOfType<bool>(json, r'cheap')!,
        creditsText: mapValueOfType<String>(json, r'creditsText')!,
        cuisines: json[r'cuisines'] is List
            ? (json[r'cuisines'] as List).cast<String>()
            : const [],
        dairyFree: mapValueOfType<bool>(json, r'dairyFree')!,
        diets: json[r'diets'] is List
            ? (json[r'diets'] as List).cast<String>()
            : const [],
        gaps: mapValueOfType<String>(json, r'gaps')!,
        glutenFree: mapValueOfType<bool>(json, r'glutenFree')!,
        instructions: mapValueOfType<String>(json, r'instructions')!,
        ketogenic: mapValueOfType<bool>(json, r'ketogenic')!,
        lowFodmap: mapValueOfType<bool>(json, r'lowFodmap')!,
        occasions: json[r'occasions'] is List
            ? (json[r'occasions'] as List).cast<String>()
            : const [],
        sustainable: mapValueOfType<bool>(json, r'sustainable')!,
        vegan: mapValueOfType<bool>(json, r'vegan')!,
        vegetarian: mapValueOfType<bool>(json, r'vegetarian')!,
        veryHealthy: mapValueOfType<bool>(json, r'veryHealthy')!,
        veryPopular: mapValueOfType<bool>(json, r'veryPopular')!,
        whole30: mapValueOfType<bool>(json, r'whole30')!,
        weightWatcherSmartPoints: json[r'weightWatcherSmartPoints'] == null
            ? null
            : num.parse(json[r'weightWatcherSmartPoints'].toString()),
        dishTypes: json[r'dishTypes'] is List
            ? (json[r'dishTypes'] as List).cast<String>()
            : const [],
        extendedIngredients: GetRecipeInformation200ResponseExtendedIngredientsInner.listFromJson(json[r'extendedIngredients'])!,
        summary: mapValueOfType<String>(json, r'summary')!,
        winePairing: GetRecipeInformation200ResponseWinePairing.fromJson(json[r'winePairing'])!,
      );
    }
    return null;
  }

  static List<GetRecipeInformationBulk200ResponseInner>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetRecipeInformationBulk200ResponseInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetRecipeInformationBulk200ResponseInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetRecipeInformationBulk200ResponseInner> mapFromJson(dynamic json) {
    final map = <String, GetRecipeInformationBulk200ResponseInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetRecipeInformationBulk200ResponseInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetRecipeInformationBulk200ResponseInner-objects as value to a dart map
  static Map<String, List<GetRecipeInformationBulk200ResponseInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetRecipeInformationBulk200ResponseInner>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetRecipeInformationBulk200ResponseInner.listFromJson(entry.value, growable: growable,);
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
    'image',
    'imageType',
    'servings',
    'readyInMinutes',
    'license',
    'sourceName',
    'sourceUrl',
    'spoonacularSourceUrl',
    'aggregateLikes',
    'healthScore',
    'spoonacularScore',
    'pricePerServing',
    'analyzedInstructions',
    'cheap',
    'creditsText',
    'cuisines',
    'dairyFree',
    'diets',
    'gaps',
    'glutenFree',
    'instructions',
    'ketogenic',
    'lowFodmap',
    'occasions',
    'sustainable',
    'vegan',
    'vegetarian',
    'veryHealthy',
    'veryPopular',
    'whole30',
    'weightWatcherSmartPoints',
    'dishTypes',
    'extendedIngredients',
    'summary',
    'winePairing',
  };
}

