part of openapi.api;

class QueryParam {
  String name;
  String value;

  QueryParam(this.name, this.value);
}

class ApiClient {

  String basePath;
  var client = Client();

  Map<String, String> _defaultHeaderMap = {};
  Map<String, Authentication> _authentications = {};

  final _regList = RegExp(r'^List<(.*)>$');
  final _regMap = RegExp(r'^Map<String,(.*)>$');

  ApiClient({this.basePath = "https://api.spoonacular.com"}) {
    // Setup authentications (key: authentication name, value: authentication).
    _authentications['apiKeyScheme'] = ApiKeyAuth("query", "apiKey");
  }

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  dynamic _deserialize(dynamic value, String targetType) {
    try {
      switch (targetType) {
        case 'String':
          return '$value';
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'bool':
          return value is bool ? value : '$value'.toLowerCase() == 'true';
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'FoodIngredientsMapProducts':
          return FoodIngredientsMapProducts.fromJson(value);
        case 'InlineObject':
          return InlineObject.fromJson(value);
        case 'InlineObject1':
          return InlineObject1.fromJson(value);
        case 'InlineObject10':
          return InlineObject10.fromJson(value);
        case 'InlineObject2':
          return InlineObject2.fromJson(value);
        case 'InlineObject3':
          return InlineObject3.fromJson(value);
        case 'InlineObject4':
          return InlineObject4.fromJson(value);
        case 'InlineObject5':
          return InlineObject5.fromJson(value);
        case 'InlineObject6':
          return InlineObject6.fromJson(value);
        case 'InlineObject7':
          return InlineObject7.fromJson(value);
        case 'InlineObject8':
          return InlineObject8.fromJson(value);
        case 'InlineObject9':
          return InlineObject9.fromJson(value);
        case 'InlineResponse200':
          return InlineResponse200.fromJson(value);
        case 'InlineResponse2001':
          return InlineResponse2001.fromJson(value);
        case 'InlineResponse20010':
          return InlineResponse20010.fromJson(value);
        case 'InlineResponse20010Amount':
          return InlineResponse20010Amount.fromJson(value);
        case 'InlineResponse20010AmountMetric':
          return InlineResponse20010AmountMetric.fromJson(value);
        case 'InlineResponse20010Ingredients':
          return InlineResponse20010Ingredients.fromJson(value);
        case 'InlineResponse20011':
          return InlineResponse20011.fromJson(value);
        case 'InlineResponse20011Ingredients':
          return InlineResponse20011Ingredients.fromJson(value);
        case 'InlineResponse20012':
          return InlineResponse20012.fromJson(value);
        case 'InlineResponse20013':
          return InlineResponse20013.fromJson(value);
        case 'InlineResponse20013Ingredients':
          return InlineResponse20013Ingredients.fromJson(value);
        case 'InlineResponse20013Ingredients1':
          return InlineResponse20013Ingredients1.fromJson(value);
        case 'InlineResponse20013ParsedInstructions':
          return InlineResponse20013ParsedInstructions.fromJson(value);
        case 'InlineResponse20013Steps':
          return InlineResponse20013Steps.fromJson(value);
        case 'InlineResponse20014':
          return InlineResponse20014.fromJson(value);
        case 'InlineResponse20015':
          return InlineResponse20015.fromJson(value);
        case 'InlineResponse20016':
          return InlineResponse20016.fromJson(value);
        case 'InlineResponse20017':
          return InlineResponse20017.fromJson(value);
        case 'InlineResponse20018':
          return InlineResponse20018.fromJson(value);
        case 'InlineResponse20018Dishes':
          return InlineResponse20018Dishes.fromJson(value);
        case 'InlineResponse20018Ingredients':
          return InlineResponse20018Ingredients.fromJson(value);
        case 'InlineResponse20019':
          return InlineResponse20019.fromJson(value);
        case 'InlineResponse2002':
          return InlineResponse2002.fromJson(value);
        case 'InlineResponse20020':
          return InlineResponse20020.fromJson(value);
        case 'InlineResponse20021':
          return InlineResponse20021.fromJson(value);
        case 'InlineResponse20021Calories':
          return InlineResponse20021Calories.fromJson(value);
        case 'InlineResponse20021CaloriesConfidenceRange95Percent':
          return InlineResponse20021CaloriesConfidenceRange95Percent.fromJson(value);
        case 'InlineResponse20022':
          return InlineResponse20022.fromJson(value);
        case 'InlineResponse20022Nutrition':
          return InlineResponse20022Nutrition.fromJson(value);
        case 'InlineResponse20023':
          return InlineResponse20023.fromJson(value);
        case 'InlineResponse20023Ingredients':
          return InlineResponse20023Ingredients.fromJson(value);
        case 'InlineResponse20024':
          return InlineResponse20024.fromJson(value);
        case 'InlineResponse20025':
          return InlineResponse20025.fromJson(value);
        case 'InlineResponse20025Results':
          return InlineResponse20025Results.fromJson(value);
        case 'InlineResponse20026':
          return InlineResponse20026.fromJson(value);
        case 'InlineResponse20027':
          return InlineResponse20027.fromJson(value);
        case 'InlineResponse20028':
          return InlineResponse20028.fromJson(value);
        case 'InlineResponse20028Ingredients':
          return InlineResponse20028Ingredients.fromJson(value);
        case 'InlineResponse20028Nutrition':
          return InlineResponse20028Nutrition.fromJson(value);
        case 'InlineResponse20028Servings':
          return InlineResponse20028Servings.fromJson(value);
        case 'InlineResponse20029':
          return InlineResponse20029.fromJson(value);
        case 'InlineResponse20029CustomFoods':
          return InlineResponse20029CustomFoods.fromJson(value);
        case 'InlineResponse2003':
          return InlineResponse2003.fromJson(value);
        case 'InlineResponse20030':
          return InlineResponse20030.fromJson(value);
        case 'InlineResponse20030Ingredients':
          return InlineResponse20030Ingredients.fromJson(value);
        case 'InlineResponse20031':
          return InlineResponse20031.fromJson(value);
        case 'InlineResponse20031ComparableProducts':
          return InlineResponse20031ComparableProducts.fromJson(value);
        case 'InlineResponse20031ComparableProductsProtein':
          return InlineResponse20031ComparableProductsProtein.fromJson(value);
        case 'InlineResponse20032':
          return InlineResponse20032.fromJson(value);
        case 'InlineResponse20032Results':
          return InlineResponse20032Results.fromJson(value);
        case 'InlineResponse20033':
          return InlineResponse20033.fromJson(value);
        case 'InlineResponse20034':
          return InlineResponse20034.fromJson(value);
        case 'InlineResponse20035':
          return InlineResponse20035.fromJson(value);
        case 'InlineResponse20035MenuItems':
          return InlineResponse20035MenuItems.fromJson(value);
        case 'InlineResponse20036':
          return InlineResponse20036.fromJson(value);
        case 'InlineResponse20037':
          return InlineResponse20037.fromJson(value);
        case 'InlineResponse20037Nutrients':
          return InlineResponse20037Nutrients.fromJson(value);
        case 'InlineResponse20038':
          return InlineResponse20038.fromJson(value);
        case 'InlineResponse20038Days':
          return InlineResponse20038Days.fromJson(value);
        case 'InlineResponse20038Items':
          return InlineResponse20038Items.fromJson(value);
        case 'InlineResponse20038NutritionSummary':
          return InlineResponse20038NutritionSummary.fromJson(value);
        case 'InlineResponse20038NutritionSummaryNutrients':
          return InlineResponse20038NutritionSummaryNutrients.fromJson(value);
        case 'InlineResponse20038Value':
          return InlineResponse20038Value.fromJson(value);
        case 'InlineResponse20039':
          return InlineResponse20039.fromJson(value);
        case 'InlineResponse2003ExtendedIngredients':
          return InlineResponse2003ExtendedIngredients.fromJson(value);
        case 'InlineResponse2003Measures':
          return InlineResponse2003Measures.fromJson(value);
        case 'InlineResponse2003MeasuresMetric':
          return InlineResponse2003MeasuresMetric.fromJson(value);
        case 'InlineResponse2003WinePairing':
          return InlineResponse2003WinePairing.fromJson(value);
        case 'InlineResponse2003WinePairingProductMatches':
          return InlineResponse2003WinePairingProductMatches.fromJson(value);
        case 'InlineResponse2004':
          return InlineResponse2004.fromJson(value);
        case 'InlineResponse20040':
          return InlineResponse20040.fromJson(value);
        case 'InlineResponse20040Items':
          return InlineResponse20040Items.fromJson(value);
        case 'InlineResponse20040Value':
          return InlineResponse20040Value.fromJson(value);
        case 'InlineResponse20041':
          return InlineResponse20041.fromJson(value);
        case 'InlineResponse20041Days':
          return InlineResponse20041Days.fromJson(value);
        case 'InlineResponse20041Items':
          return InlineResponse20041Items.fromJson(value);
        case 'InlineResponse20041Value':
          return InlineResponse20041Value.fromJson(value);
        case 'InlineResponse20042':
          return InlineResponse20042.fromJson(value);
        case 'InlineResponse20042Aisles':
          return InlineResponse20042Aisles.fromJson(value);
        case 'InlineResponse20042Items':
          return InlineResponse20042Items.fromJson(value);
        case 'InlineResponse20042Measures':
          return InlineResponse20042Measures.fromJson(value);
        case 'InlineResponse20043':
          return InlineResponse20043.fromJson(value);
        case 'InlineResponse20044':
          return InlineResponse20044.fromJson(value);
        case 'InlineResponse20045':
          return InlineResponse20045.fromJson(value);
        case 'InlineResponse20045ProductMatches':
          return InlineResponse20045ProductMatches.fromJson(value);
        case 'InlineResponse20046':
          return InlineResponse20046.fromJson(value);
        case 'InlineResponse20047':
          return InlineResponse20047.fromJson(value);
        case 'InlineResponse20047RecommendedWines':
          return InlineResponse20047RecommendedWines.fromJson(value);
        case 'InlineResponse20048':
          return InlineResponse20048.fromJson(value);
        case 'InlineResponse20049':
          return InlineResponse20049.fromJson(value);
        case 'InlineResponse20049Category':
          return InlineResponse20049Category.fromJson(value);
        case 'InlineResponse20049Nutrition':
          return InlineResponse20049Nutrition.fromJson(value);
        case 'InlineResponse20049NutritionCalories':
          return InlineResponse20049NutritionCalories.fromJson(value);
        case 'InlineResponse20049NutritionCaloriesConfidenceRange95Percent':
          return InlineResponse20049NutritionCaloriesConfidenceRange95Percent.fromJson(value);
        case 'InlineResponse20049Recipes':
          return InlineResponse20049Recipes.fromJson(value);
        case 'InlineResponse2005':
          return InlineResponse2005.fromJson(value);
        case 'InlineResponse20050':
          return InlineResponse20050.fromJson(value);
        case 'InlineResponse20051':
          return InlineResponse20051.fromJson(value);
        case 'InlineResponse20052':
          return InlineResponse20052.fromJson(value);
        case 'InlineResponse20053':
          return InlineResponse20053.fromJson(value);
        case 'InlineResponse20053Results':
          return InlineResponse20053Results.fromJson(value);
        case 'InlineResponse20053SearchResults':
          return InlineResponse20053SearchResults.fromJson(value);
        case 'InlineResponse20054':
          return InlineResponse20054.fromJson(value);
        case 'InlineResponse20054Videos':
          return InlineResponse20054Videos.fromJson(value);
        case 'InlineResponse20055':
          return InlineResponse20055.fromJson(value);
        case 'InlineResponse20056':
          return InlineResponse20056.fromJson(value);
        case 'InlineResponse20057':
          return InlineResponse20057.fromJson(value);
        case 'InlineResponse20057Suggests':
          return InlineResponse20057Suggests.fromJson(value);
        case 'InlineResponse2006':
          return InlineResponse2006.fromJson(value);
        case 'InlineResponse2006Recipes':
          return InlineResponse2006Recipes.fromJson(value);
        case 'InlineResponse2007':
          return InlineResponse2007.fromJson(value);
        case 'InlineResponse2008':
          return InlineResponse2008.fromJson(value);
        case 'InlineResponse2009':
          return InlineResponse2009.fromJson(value);
        case 'InlineResponse200Results':
          return InlineResponse200Results.fromJson(value);
        case 'RecipesFindByIngredientsMissedIngredients':
          return RecipesFindByIngredientsMissedIngredients.fromJson(value);
        case 'RecipesParseIngredientsEstimatedCost':
          return RecipesParseIngredientsEstimatedCost.fromJson(value);
        case 'RecipesParseIngredientsNutrition':
          return RecipesParseIngredientsNutrition.fromJson(value);
        case 'RecipesParseIngredientsNutritionCaloricBreakdown':
          return RecipesParseIngredientsNutritionCaloricBreakdown.fromJson(value);
        case 'RecipesParseIngredientsNutritionNutrients':
          return RecipesParseIngredientsNutritionNutrients.fromJson(value);
        case 'RecipesParseIngredientsNutritionProperties':
          return RecipesParseIngredientsNutritionProperties.fromJson(value);
        case 'RecipesParseIngredientsNutritionWeightPerServing':
          return RecipesParseIngredientsNutritionWeightPerServing.fromJson(value);
        default:
          {
            Match match;
            if (value is List &&
                (match = _regList.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return value.map((v) => _deserialize(v, newTargetType)).toList();
            } else if (value is Map &&
                (match = _regMap.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return Map.fromIterables(value.keys,
                  value.values.map((v) => _deserialize(v, newTargetType)));
            }
          }
      }
    } on Exception catch (e, stack) {
      throw ApiException.withInner(500, 'Exception during deserialization.', e, stack);
    }
    throw ApiException(500, 'Could not find a suitable class for deserialization');
  }

  dynamic deserialize(String json, String targetType) {
    // Remove all spaces.  Necessary for reg expressions as well.
    targetType = targetType.replaceAll(' ', '');

    if (targetType == 'String') return json;

    var decodedJson = jsonDecode(json);
    return _deserialize(decodedJson, targetType);
  }

  String serialize(Object obj) {
    String serialized = '';
    if (obj == null) {
      serialized = '';
    } else {
      serialized = json.encode(obj);
    }
    return serialized;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi' a key might appear multiple times.
  Future<Response> invokeAPI(String path,
                             String method,
                             Iterable<QueryParam> queryParams,
                             Object body,
                             Map<String, String> headerParams,
                             Map<String, String> formParams,
                             String contentType,
                             List<String> authNames) async {

    _updateParamsForAuth(authNames, queryParams, headerParams);

    var ps = queryParams
      .where((p) => p.value != null)
      .map((p) => '${p.name}=${Uri.encodeQueryComponent(p.value)}');

    String queryString = ps.isNotEmpty ?
                         '?' + ps.join('&') :
                         '';

    String url = basePath + path + queryString;

    headerParams.addAll(_defaultHeaderMap);
    headerParams['Content-Type'] = contentType;

    if(body is MultipartRequest) {
      var request = MultipartRequest(method, Uri.parse(url));
      request.fields.addAll(body.fields);
      request.files.addAll(body.files);
      request.headers.addAll(body.headers);
      request.headers.addAll(headerParams);
      var response = await client.send(request);
      return Response.fromStream(response);
    } else {
      var msgBody = contentType == "application/x-www-form-urlencoded" ? formParams : serialize(body);
      switch(method) {
        case "POST":
          return client.post(url, headers: headerParams, body: msgBody);
        case "PUT":
          return client.put(url, headers: headerParams, body: msgBody);
        case "DELETE":
          return client.delete(url, headers: headerParams);
        case "PATCH":
          return client.patch(url, headers: headerParams, body: msgBody);
        default:
          return client.get(url, headers: headerParams);
      }
    }
  }

  /// Update query and header parameters based on authentication settings.
  /// @param authNames The authentications to apply
  void _updateParamsForAuth(List<String> authNames, List<QueryParam> queryParams, Map<String, String> headerParams) {
    authNames.forEach((authName) {
      Authentication auth = _authentications[authName];
      if (auth == null) throw ArgumentError("Authentication undefined: " + authName);
      auth.applyToParams(queryParams, headerParams);
    });
  }

  T getAuthentication<T extends Authentication>(String name) {
    var authentication = _authentications[name];

    return authentication is T ? authentication : null;
  }
}
