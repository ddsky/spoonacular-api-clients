part of openapi.api;

class InlineResponse2003 {
  
  int id = null;
  
  String title = null;
  
  String image = null;
  
  String imageType = null;
  
  num servings = null;
  
  int readyInMinutes = null;
  
  String license = null;
  
  String sourceName = null;
  
  String sourceUrl = null;
  
  String spoonacularSourceUrl = null;
  
  int aggregateLikes = null;
  
  num healthScore = null;
  
  num spoonacularScore = null;
  
  num pricePerServing = null;
  
  List<Object> analyzedInstructions = [];
  
  bool cheap = null;
  
  String creditsText = null;
  
  List<String> cuisines = [];
  
  bool dairyFree = null;
  
  List<String> diets = [];
  
  String gaps = null;
  
  bool glutenFree = null;
  
  String instructions = null;
  
  bool ketogenic = null;
  
  bool lowFodmap = null;
  
  List<String> occasions = [];
  
  bool sustainable = null;
  
  bool vegan = null;
  
  bool vegetarian = null;
  
  bool veryHealthy = null;
  
  bool veryPopular = null;
  
  bool whole30 = null;
  
  num weightWatcherSmartPoints = null;
  
  List<String> dishTypes = [];
  
  List<InlineResponse2003ExtendedIngredients> extendedIngredients = [];
  
  String summary = null;
  
  InlineResponse2003WinePairing winePairing = null;
  InlineResponse2003();

  @override
  String toString() {
    return 'InlineResponse2003[id=$id, title=$title, image=$image, imageType=$imageType, servings=$servings, readyInMinutes=$readyInMinutes, license=$license, sourceName=$sourceName, sourceUrl=$sourceUrl, spoonacularSourceUrl=$spoonacularSourceUrl, aggregateLikes=$aggregateLikes, healthScore=$healthScore, spoonacularScore=$spoonacularScore, pricePerServing=$pricePerServing, analyzedInstructions=$analyzedInstructions, cheap=$cheap, creditsText=$creditsText, cuisines=$cuisines, dairyFree=$dairyFree, diets=$diets, gaps=$gaps, glutenFree=$glutenFree, instructions=$instructions, ketogenic=$ketogenic, lowFodmap=$lowFodmap, occasions=$occasions, sustainable=$sustainable, vegan=$vegan, vegetarian=$vegetarian, veryHealthy=$veryHealthy, veryPopular=$veryPopular, whole30=$whole30, weightWatcherSmartPoints=$weightWatcherSmartPoints, dishTypes=$dishTypes, extendedIngredients=$extendedIngredients, summary=$summary, winePairing=$winePairing, ]';
  }

  InlineResponse2003.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['title'] == null) {
      title = null;
    } else {
          title = json['title'];
    }
    if (json['image'] == null) {
      image = null;
    } else {
          image = json['image'];
    }
    if (json['imageType'] == null) {
      imageType = null;
    } else {
          imageType = json['imageType'];
    }
    if (json['servings'] == null) {
      servings = null;
    } else {
          servings = json['servings'];
    }
    if (json['readyInMinutes'] == null) {
      readyInMinutes = null;
    } else {
          readyInMinutes = json['readyInMinutes'];
    }
    if (json['license'] == null) {
      license = null;
    } else {
          license = json['license'];
    }
    if (json['sourceName'] == null) {
      sourceName = null;
    } else {
          sourceName = json['sourceName'];
    }
    if (json['sourceUrl'] == null) {
      sourceUrl = null;
    } else {
          sourceUrl = json['sourceUrl'];
    }
    if (json['spoonacularSourceUrl'] == null) {
      spoonacularSourceUrl = null;
    } else {
          spoonacularSourceUrl = json['spoonacularSourceUrl'];
    }
    if (json['aggregateLikes'] == null) {
      aggregateLikes = null;
    } else {
          aggregateLikes = json['aggregateLikes'];
    }
    if (json['healthScore'] == null) {
      healthScore = null;
    } else {
          healthScore = json['healthScore'];
    }
    if (json['spoonacularScore'] == null) {
      spoonacularScore = null;
    } else {
          spoonacularScore = json['spoonacularScore'];
    }
    if (json['pricePerServing'] == null) {
      pricePerServing = null;
    } else {
          pricePerServing = json['pricePerServing'];
    }
    if (json['analyzedInstructions'] == null) {
      analyzedInstructions = null;
    } else {
      analyzedInstructions = Object.listFromJson(json['analyzedInstructions']);
    }
    if (json['cheap'] == null) {
      cheap = null;
    } else {
          cheap = json['cheap'];
    }
    if (json['creditsText'] == null) {
      creditsText = null;
    } else {
          creditsText = json['creditsText'];
    }
    if (json['cuisines'] == null) {
      cuisines = null;
    } else {
      cuisines = (json['cuisines'] as List).cast<String>();
    }
    if (json['dairyFree'] == null) {
      dairyFree = null;
    } else {
          dairyFree = json['dairyFree'];
    }
    if (json['diets'] == null) {
      diets = null;
    } else {
      diets = (json['diets'] as List).cast<String>();
    }
    if (json['gaps'] == null) {
      gaps = null;
    } else {
          gaps = json['gaps'];
    }
    if (json['glutenFree'] == null) {
      glutenFree = null;
    } else {
          glutenFree = json['glutenFree'];
    }
    if (json['instructions'] == null) {
      instructions = null;
    } else {
          instructions = json['instructions'];
    }
    if (json['ketogenic'] == null) {
      ketogenic = null;
    } else {
          ketogenic = json['ketogenic'];
    }
    if (json['lowFodmap'] == null) {
      lowFodmap = null;
    } else {
          lowFodmap = json['lowFodmap'];
    }
    if (json['occasions'] == null) {
      occasions = null;
    } else {
      occasions = (json['occasions'] as List).cast<String>();
    }
    if (json['sustainable'] == null) {
      sustainable = null;
    } else {
          sustainable = json['sustainable'];
    }
    if (json['vegan'] == null) {
      vegan = null;
    } else {
          vegan = json['vegan'];
    }
    if (json['vegetarian'] == null) {
      vegetarian = null;
    } else {
          vegetarian = json['vegetarian'];
    }
    if (json['veryHealthy'] == null) {
      veryHealthy = null;
    } else {
          veryHealthy = json['veryHealthy'];
    }
    if (json['veryPopular'] == null) {
      veryPopular = null;
    } else {
          veryPopular = json['veryPopular'];
    }
    if (json['whole30'] == null) {
      whole30 = null;
    } else {
          whole30 = json['whole30'];
    }
    if (json['weightWatcherSmartPoints'] == null) {
      weightWatcherSmartPoints = null;
    } else {
          weightWatcherSmartPoints = json['weightWatcherSmartPoints'];
    }
    if (json['dishTypes'] == null) {
      dishTypes = null;
    } else {
      dishTypes = (json['dishTypes'] as List).cast<String>();
    }
    if (json['extendedIngredients'] == null) {
      extendedIngredients = null;
    } else {
      extendedIngredients = InlineResponse2003ExtendedIngredients.listFromJson(json['extendedIngredients']);
    }
    if (json['summary'] == null) {
      summary = null;
    } else {
          summary = json['summary'];
    }
    if (json['winePairing'] == null) {
      winePairing = null;
    } else {
      winePairing = new InlineResponse2003WinePairing.fromJson(json['winePairing']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (title != null)
      json['title'] = title;
    if (image != null)
      json['image'] = image;
    if (imageType != null)
      json['imageType'] = imageType;
    if (servings != null)
      json['servings'] = servings;
    if (readyInMinutes != null)
      json['readyInMinutes'] = readyInMinutes;
    if (license != null)
      json['license'] = license;
    if (sourceName != null)
      json['sourceName'] = sourceName;
    if (sourceUrl != null)
      json['sourceUrl'] = sourceUrl;
    if (spoonacularSourceUrl != null)
      json['spoonacularSourceUrl'] = spoonacularSourceUrl;
    if (aggregateLikes != null)
      json['aggregateLikes'] = aggregateLikes;
    if (healthScore != null)
      json['healthScore'] = healthScore;
    if (spoonacularScore != null)
      json['spoonacularScore'] = spoonacularScore;
    if (pricePerServing != null)
      json['pricePerServing'] = pricePerServing;
    if (analyzedInstructions != null)
      json['analyzedInstructions'] = analyzedInstructions;
    if (cheap != null)
      json['cheap'] = cheap;
    if (creditsText != null)
      json['creditsText'] = creditsText;
    if (cuisines != null)
      json['cuisines'] = cuisines;
    if (dairyFree != null)
      json['dairyFree'] = dairyFree;
    if (diets != null)
      json['diets'] = diets;
    if (gaps != null)
      json['gaps'] = gaps;
    if (glutenFree != null)
      json['glutenFree'] = glutenFree;
    if (instructions != null)
      json['instructions'] = instructions;
    if (ketogenic != null)
      json['ketogenic'] = ketogenic;
    if (lowFodmap != null)
      json['lowFodmap'] = lowFodmap;
    if (occasions != null)
      json['occasions'] = occasions;
    if (sustainable != null)
      json['sustainable'] = sustainable;
    if (vegan != null)
      json['vegan'] = vegan;
    if (vegetarian != null)
      json['vegetarian'] = vegetarian;
    if (veryHealthy != null)
      json['veryHealthy'] = veryHealthy;
    if (veryPopular != null)
      json['veryPopular'] = veryPopular;
    if (whole30 != null)
      json['whole30'] = whole30;
    if (weightWatcherSmartPoints != null)
      json['weightWatcherSmartPoints'] = weightWatcherSmartPoints;
    if (dishTypes != null)
      json['dishTypes'] = dishTypes;
    if (extendedIngredients != null)
      json['extendedIngredients'] = extendedIngredients;
    if (summary != null)
      json['summary'] = summary;
    if (winePairing != null)
      json['winePairing'] = winePairing;
    return json;
  }

  static List<InlineResponse2003> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse2003>() : json.map((value) => new InlineResponse2003.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2003> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse2003>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse2003.fromJson(value));
    }
    return map;
  }
}

