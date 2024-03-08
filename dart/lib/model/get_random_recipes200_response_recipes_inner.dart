//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetRandomRecipes200ResponseRecipesInner {
  /// Returns a new [GetRandomRecipes200ResponseRecipesInner] instance.
  GetRandomRecipes200ResponseRecipesInner({
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
    this.winePairing,
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

  num aggregateLikes;

  num healthScore;

  num spoonacularScore;

  num pricePerServing;

  List<Object> analyzedInstructions;

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GetRecipeInformation200ResponseWinePairing? winePairing;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetRandomRecipes200ResponseRecipesInner &&
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
    _deepEquality.equals(other.analyzedInstructions, analyzedInstructions) &&
    other.cheap == cheap &&
    other.creditsText == creditsText &&
    _deepEquality.equals(other.cuisines, cuisines) &&
    other.dairyFree == dairyFree &&
    _deepEquality.equals(other.diets, diets) &&
    other.gaps == gaps &&
    other.glutenFree == glutenFree &&
    other.instructions == instructions &&
    other.ketogenic == ketogenic &&
    other.lowFodmap == lowFodmap &&
    _deepEquality.equals(other.occasions, occasions) &&
    other.sustainable == sustainable &&
    other.vegan == vegan &&
    other.vegetarian == vegetarian &&
    other.veryHealthy == veryHealthy &&
    other.veryPopular == veryPopular &&
    other.whole30 == whole30 &&
    other.weightWatcherSmartPoints == weightWatcherSmartPoints &&
    _deepEquality.equals(other.dishTypes, dishTypes) &&
    _deepEquality.equals(other.extendedIngredients, extendedIngredients) &&
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
    (winePairing == null ? 0 : winePairing!.hashCode);

  @override
  String toString() => 'GetRandomRecipes200ResponseRecipesInner[id=$id, title=$title, image=$image, imageType=$imageType, servings=$servings, readyInMinutes=$readyInMinutes, license=$license, sourceName=$sourceName, sourceUrl=$sourceUrl, spoonacularSourceUrl=$spoonacularSourceUrl, aggregateLikes=$aggregateLikes, healthScore=$healthScore, spoonacularScore=$spoonacularScore, pricePerServing=$pricePerServing, analyzedInstructions=$analyzedInstructions, cheap=$cheap, creditsText=$creditsText, cuisines=$cuisines, dairyFree=$dairyFree, diets=$diets, gaps=$gaps, glutenFree=$glutenFree, instructions=$instructions, ketogenic=$ketogenic, lowFodmap=$lowFodmap, occasions=$occasions, sustainable=$sustainable, vegan=$vegan, vegetarian=$vegetarian, veryHealthy=$veryHealthy, veryPopular=$veryPopular, whole30=$whole30, weightWatcherSmartPoints=$weightWatcherSmartPoints, dishTypes=$dishTypes, extendedIngredients=$extendedIngredients, summary=$summary, winePairing=$winePairing]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'title'] = this.title;
      json[r'image'] = this.image;
      json[r'imageType'] = this.imageType;
      json[r'servings'] = this.servings;
      json[r'readyInMinutes'] = this.readyInMinutes;
      json[r'license'] = this.license;
      json[r'sourceName'] = this.sourceName;
      json[r'sourceUrl'] = this.sourceUrl;
      json[r'spoonacularSourceUrl'] = this.spoonacularSourceUrl;
      json[r'aggregateLikes'] = this.aggregateLikes;
      json[r'healthScore'] = this.healthScore;
      json[r'spoonacularScore'] = this.spoonacularScore;
      json[r'pricePerServing'] = this.pricePerServing;
      json[r'analyzedInstructions'] = this.analyzedInstructions;
      json[r'cheap'] = this.cheap;
      json[r'creditsText'] = this.creditsText;
      json[r'cuisines'] = this.cuisines;
      json[r'dairyFree'] = this.dairyFree;
      json[r'diets'] = this.diets;
      json[r'gaps'] = this.gaps;
      json[r'glutenFree'] = this.glutenFree;
      json[r'instructions'] = this.instructions;
      json[r'ketogenic'] = this.ketogenic;
      json[r'lowFodmap'] = this.lowFodmap;
      json[r'occasions'] = this.occasions;
      json[r'sustainable'] = this.sustainable;
      json[r'vegan'] = this.vegan;
      json[r'vegetarian'] = this.vegetarian;
      json[r'veryHealthy'] = this.veryHealthy;
      json[r'veryPopular'] = this.veryPopular;
      json[r'whole30'] = this.whole30;
      json[r'weightWatcherSmartPoints'] = this.weightWatcherSmartPoints;
      json[r'dishTypes'] = this.dishTypes;
      json[r'extendedIngredients'] = this.extendedIngredients.toList(growable: false);
      json[r'summary'] = this.summary;
    if (this.winePairing != null) {
      json[r'winePairing'] = this.winePairing;
    } else {
      json[r'winePairing'] = null;
    }
    return json;
  }

  /// Returns a new [GetRandomRecipes200ResponseRecipesInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetRandomRecipes200ResponseRecipesInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetRandomRecipes200ResponseRecipesInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetRandomRecipes200ResponseRecipesInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetRandomRecipes200ResponseRecipesInner(
        id: mapValueOfType<int>(json, r'id')!,
        title: mapValueOfType<String>(json, r'title')!,
        image: mapValueOfType<String>(json, r'image')!,
        imageType: mapValueOfType<String>(json, r'imageType')!,
        servings: num.parse('${json[r'servings']}'),
        readyInMinutes: mapValueOfType<int>(json, r'readyInMinutes')!,
        license: mapValueOfType<String>(json, r'license')!,
        sourceName: mapValueOfType<String>(json, r'sourceName')!,
        sourceUrl: mapValueOfType<String>(json, r'sourceUrl')!,
        spoonacularSourceUrl: mapValueOfType<String>(json, r'spoonacularSourceUrl')!,
        aggregateLikes: num.parse('${json[r'aggregateLikes']}'),
        healthScore: num.parse('${json[r'healthScore']}'),
        spoonacularScore: num.parse('${json[r'spoonacularScore']}'),
        pricePerServing: num.parse('${json[r'pricePerServing']}'),
        analyzedInstructions: Object.listFromJson(json[r'analyzedInstructions']),
        cheap: mapValueOfType<bool>(json, r'cheap')!,
        creditsText: mapValueOfType<String>(json, r'creditsText')!,
        cuisines: json[r'cuisines'] is Iterable
            ? (json[r'cuisines'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        dairyFree: mapValueOfType<bool>(json, r'dairyFree')!,
        diets: json[r'diets'] is Iterable
            ? (json[r'diets'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        gaps: mapValueOfType<String>(json, r'gaps')!,
        glutenFree: mapValueOfType<bool>(json, r'glutenFree')!,
        instructions: mapValueOfType<String>(json, r'instructions')!,
        ketogenic: mapValueOfType<bool>(json, r'ketogenic')!,
        lowFodmap: mapValueOfType<bool>(json, r'lowFodmap')!,
        occasions: json[r'occasions'] is Iterable
            ? (json[r'occasions'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        sustainable: mapValueOfType<bool>(json, r'sustainable')!,
        vegan: mapValueOfType<bool>(json, r'vegan')!,
        vegetarian: mapValueOfType<bool>(json, r'vegetarian')!,
        veryHealthy: mapValueOfType<bool>(json, r'veryHealthy')!,
        veryPopular: mapValueOfType<bool>(json, r'veryPopular')!,
        whole30: mapValueOfType<bool>(json, r'whole30')!,
        weightWatcherSmartPoints: num.parse('${json[r'weightWatcherSmartPoints']}'),
        dishTypes: json[r'dishTypes'] is Iterable
            ? (json[r'dishTypes'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        extendedIngredients: GetRecipeInformation200ResponseExtendedIngredientsInner.listFromJson(json[r'extendedIngredients']).toSet(),
        summary: mapValueOfType<String>(json, r'summary')!,
        winePairing: GetRecipeInformation200ResponseWinePairing.fromJson(json[r'winePairing']),
      );
    }
    return null;
  }

  static List<GetRandomRecipes200ResponseRecipesInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetRandomRecipes200ResponseRecipesInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetRandomRecipes200ResponseRecipesInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetRandomRecipes200ResponseRecipesInner> mapFromJson(dynamic json) {
    final map = <String, GetRandomRecipes200ResponseRecipesInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetRandomRecipes200ResponseRecipesInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetRandomRecipes200ResponseRecipesInner-objects as value to a dart map
  static Map<String, List<GetRandomRecipes200ResponseRecipesInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetRandomRecipes200ResponseRecipesInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetRandomRecipes200ResponseRecipesInner.listFromJson(entry.value, growable: growable,);
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
    'cheap',
    'creditsText',
    'dairyFree',
    'gaps',
    'glutenFree',
    'instructions',
    'ketogenic',
    'lowFodmap',
    'sustainable',
    'vegan',
    'vegetarian',
    'veryHealthy',
    'veryPopular',
    'whole30',
    'weightWatcherSmartPoints',
    'summary',
  };
}

