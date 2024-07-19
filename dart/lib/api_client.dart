//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ApiClient {
  ApiClient({this.basePath = 'https://api.spoonacular.com', this.authentication,});

  final String basePath;
  final Authentication? authentication;

  var _client = Client();
  final _defaultHeaderMap = <String, String>{};

  /// Returns the current HTTP [Client] instance to use in this class.
  ///
  /// The return value is guaranteed to never be null.
  Client get client => _client;

  /// Requests to use a new HTTP [Client] in this class.
  set client(Client newClient) {
    _client = newClient;
  }

  Map<String, String> get defaultHeaderMap => _defaultHeaderMap;

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi', a key might appear multiple times.
  Future<Response> invokeAPI(
    String path,
    String method,
    List<QueryParam> queryParams,
    Object? body,
    Map<String, String> headerParams,
    Map<String, String> formParams,
    String? contentType,
  ) async {
    await authentication?.applyToParams(queryParams, headerParams);

    headerParams.addAll(_defaultHeaderMap);
    if (contentType != null) {
      headerParams['Content-Type'] = contentType;
    }

    final urlEncodedQueryParams = queryParams.map((param) => '$param');
    final queryString = urlEncodedQueryParams.isNotEmpty ? '?${urlEncodedQueryParams.join('&')}' : '';
    final uri = Uri.parse('$basePath$path$queryString');

    try {
      // Special case for uploading a single file which isn't a 'multipart/form-data'.
      if (
        body is MultipartFile && (contentType == null ||
        !contentType.toLowerCase().startsWith('multipart/form-data'))
      ) {
        final request = StreamedRequest(method, uri);
        request.headers.addAll(headerParams);
        request.contentLength = body.length;
        body.finalize().listen(
          request.sink.add,
          onDone: request.sink.close,
          // ignore: avoid_types_on_closure_parameters
          onError: (Object error, StackTrace trace) => request.sink.close(),
          cancelOnError: true,
        );
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      if (body is MultipartRequest) {
        final request = MultipartRequest(method, uri);
        request.fields.addAll(body.fields);
        request.files.addAll(body.files);
        request.headers.addAll(body.headers);
        request.headers.addAll(headerParams);
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      final msgBody = contentType == 'application/x-www-form-urlencoded'
        ? formParams
        : await serializeAsync(body);
      final nullableHeaderParams = headerParams.isEmpty ? null : headerParams;

      switch(method) {
        case 'POST': return await _client.post(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'PUT': return await _client.put(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'DELETE': return await _client.delete(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'PATCH': return await _client.patch(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'HEAD': return await _client.head(uri, headers: nullableHeaderParams,);
        case 'GET': return await _client.get(uri, headers: nullableHeaderParams,);
      }
    } on SocketException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Socket operation failed: $method $path',
        error,
        trace,
      );
    } on TlsException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'TLS/SSL communication failed: $method $path',
        error,
        trace,
      );
    } on IOException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'I/O operation failed: $method $path',
        error,
        trace,
      );
    } on ClientException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'HTTP connection failed: $method $path',
        error,
        trace,
      );
    } on Exception catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Exception occurred: $method $path',
        error,
        trace,
      );
    }

    throw ApiException(
      HttpStatus.badRequest,
      'Invalid HTTP operation: $method $path',
    );
  }

  Future<dynamic> deserializeAsync(String value, String targetType, {bool growable = false,}) async =>
    // ignore: deprecated_member_use_from_same_package
    deserialize(value, targetType, growable: growable);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use deserializeAsync() instead.')
  dynamic deserialize(String value, String targetType, {bool growable = false,}) {
    // Remove all spaces. Necessary for regular expressions as well.
    targetType = targetType.replaceAll(' ', ''); // ignore: parameter_assignments

    // If the expected target type is String, nothing to do...
    return targetType == 'String'
      ? value
      : fromJson(json.decode(value), targetType, growable: growable);
  }

  // ignore: deprecated_member_use_from_same_package
  Future<String> serializeAsync(Object? value) async => serialize(value);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use serializeAsync() instead.')
  String serialize(Object? value) => value == null ? '' : json.encode(value);

  /// Returns a native instance of an OpenAPI class matching the [specified type][targetType].
  static dynamic fromJson(dynamic value, String targetType, {bool growable = false,}) {
    try {
      switch (targetType) {
        case 'String':
          return value is String ? value : value.toString();
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'bool':
          if (value is bool) {
            return value;
          }
          final valueString = '$value'.toLowerCase();
          return valueString == 'true' || valueString == '1';
        case 'DateTime':
          return value is DateTime ? value : DateTime.tryParse(value);
        case 'AddMealPlanTemplate200Response':
          return AddMealPlanTemplate200Response.fromJson(value);
        case 'AddMealPlanTemplate200ResponseItemsInner':
          return AddMealPlanTemplate200ResponseItemsInner.fromJson(value);
        case 'AddMealPlanTemplate200ResponseItemsInnerValue':
          return AddMealPlanTemplate200ResponseItemsInnerValue.fromJson(value);
        case 'AddToMealPlanRequest':
          return AddToMealPlanRequest.fromJson(value);
        case 'AddToMealPlanRequestValue':
          return AddToMealPlanRequestValue.fromJson(value);
        case 'AddToMealPlanRequestValueIngredientsInner':
          return AddToMealPlanRequestValueIngredientsInner.fromJson(value);
        case 'AddToShoppingListRequest':
          return AddToShoppingListRequest.fromJson(value);
        case 'AnalyzeARecipeSearchQuery200Response':
          return AnalyzeARecipeSearchQuery200Response.fromJson(value);
        case 'AnalyzeARecipeSearchQuery200ResponseDishesInner':
          return AnalyzeARecipeSearchQuery200ResponseDishesInner.fromJson(value);
        case 'AnalyzeARecipeSearchQuery200ResponseIngredientsInner':
          return AnalyzeARecipeSearchQuery200ResponseIngredientsInner.fromJson(value);
        case 'AnalyzeRecipeInstructions200Response':
          return AnalyzeRecipeInstructions200Response.fromJson(value);
        case 'AnalyzeRecipeInstructions200ResponseIngredientsInner':
          return AnalyzeRecipeInstructions200ResponseIngredientsInner.fromJson(value);
        case 'AnalyzeRecipeInstructions200ResponseParsedInstructionsInner':
          return AnalyzeRecipeInstructions200ResponseParsedInstructionsInner.fromJson(value);
        case 'AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner':
          return AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner.fromJson(value);
        case 'AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner':
          return AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner.fromJson(value);
        case 'AnalyzeRecipeRequest':
          return AnalyzeRecipeRequest.fromJson(value);
        case 'AutocompleteIngredientSearch200ResponseInner':
          return AutocompleteIngredientSearch200ResponseInner.fromJson(value);
        case 'AutocompleteProductSearch200Response':
          return AutocompleteProductSearch200Response.fromJson(value);
        case 'AutocompleteProductSearch200ResponseResultsInner':
          return AutocompleteProductSearch200ResponseResultsInner.fromJson(value);
        case 'AutocompleteRecipeSearch200ResponseInner':
          return AutocompleteRecipeSearch200ResponseInner.fromJson(value);
        case 'ClassifyCuisine200Response':
          return ClassifyCuisine200Response.fromJson(value);
        case 'ClassifyGroceryProduct200Response':
          return ClassifyGroceryProduct200Response.fromJson(value);
        case 'ClassifyGroceryProductBulk200ResponseInner':
          return ClassifyGroceryProductBulk200ResponseInner.fromJson(value);
        case 'ClassifyGroceryProductBulkRequestInner':
          return ClassifyGroceryProductBulkRequestInner.fromJson(value);
        case 'ClassifyGroceryProductRequest':
          return ClassifyGroceryProductRequest.fromJson(value);
        case 'ComparableProduct':
          return ComparableProduct.fromJson(value);
        case 'ComputeGlycemicLoad200Response':
          return ComputeGlycemicLoad200Response.fromJson(value);
        case 'ComputeGlycemicLoad200ResponseIngredientsInner':
          return ComputeGlycemicLoad200ResponseIngredientsInner.fromJson(value);
        case 'ComputeGlycemicLoadRequest':
          return ComputeGlycemicLoadRequest.fromJson(value);
        case 'ComputeIngredientAmount200Response':
          return ComputeIngredientAmount200Response.fromJson(value);
        case 'ConnectUser200Response':
          return ConnectUser200Response.fromJson(value);
        case 'ConnectUserRequest':
          return ConnectUserRequest.fromJson(value);
        case 'ConvertAmounts200Response':
          return ConvertAmounts200Response.fromJson(value);
        case 'CreateRecipeCard200Response':
          return CreateRecipeCard200Response.fromJson(value);
        case 'DetectFoodInText200Response':
          return DetectFoodInText200Response.fromJson(value);
        case 'DetectFoodInText200ResponseAnnotationsInner':
          return DetectFoodInText200ResponseAnnotationsInner.fromJson(value);
        case 'GenerateMealPlan200Response':
          return GenerateMealPlan200Response.fromJson(value);
        case 'GenerateMealPlan200ResponseNutrients':
          return GenerateMealPlan200ResponseNutrients.fromJson(value);
        case 'GetARandomFoodJoke200Response':
          return GetARandomFoodJoke200Response.fromJson(value);
        case 'GetAnalyzedRecipeInstructions200ResponseInner':
          return GetAnalyzedRecipeInstructions200ResponseInner.fromJson(value);
        case 'GetAnalyzedRecipeInstructions200ResponseInnerStepsInner':
          return GetAnalyzedRecipeInstructions200ResponseInnerStepsInner.fromJson(value);
        case 'GetAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner':
          return GetAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner.fromJson(value);
        case 'GetComparableProducts200Response':
          return GetComparableProducts200Response.fromJson(value);
        case 'GetComparableProducts200ResponseComparableProducts':
          return GetComparableProducts200ResponseComparableProducts.fromJson(value);
        case 'GetConversationSuggests200Response':
          return GetConversationSuggests200Response.fromJson(value);
        case 'GetConversationSuggests200ResponseSuggests':
          return GetConversationSuggests200ResponseSuggests.fromJson(value);
        case 'GetConversationSuggests200ResponseSuggestsInner':
          return GetConversationSuggests200ResponseSuggestsInner.fromJson(value);
        case 'GetDishPairingForWine200Response':
          return GetDishPairingForWine200Response.fromJson(value);
        case 'GetIngredientSubstitutes200Response':
          return GetIngredientSubstitutes200Response.fromJson(value);
        case 'GetMealPlanTemplate200Response':
          return GetMealPlanTemplate200Response.fromJson(value);
        case 'GetMealPlanTemplate200ResponseDaysInner':
          return GetMealPlanTemplate200ResponseDaysInner.fromJson(value);
        case 'GetMealPlanTemplate200ResponseDaysInnerItemsInner':
          return GetMealPlanTemplate200ResponseDaysInnerItemsInner.fromJson(value);
        case 'GetMealPlanTemplate200ResponseDaysInnerItemsInnerValue':
          return GetMealPlanTemplate200ResponseDaysInnerItemsInnerValue.fromJson(value);
        case 'GetMealPlanTemplates200Response':
          return GetMealPlanTemplates200Response.fromJson(value);
        case 'GetMealPlanTemplates200ResponseTemplatesInner':
          return GetMealPlanTemplates200ResponseTemplatesInner.fromJson(value);
        case 'GetMealPlanWeek200Response':
          return GetMealPlanWeek200Response.fromJson(value);
        case 'GetMealPlanWeek200ResponseDaysInner':
          return GetMealPlanWeek200ResponseDaysInner.fromJson(value);
        case 'GetMealPlanWeek200ResponseDaysInnerItemsInner':
          return GetMealPlanWeek200ResponseDaysInnerItemsInner.fromJson(value);
        case 'GetMealPlanWeek200ResponseDaysInnerItemsInnerValue':
          return GetMealPlanWeek200ResponseDaysInnerItemsInnerValue.fromJson(value);
        case 'GetMealPlanWeek200ResponseDaysInnerNutritionSummary':
          return GetMealPlanWeek200ResponseDaysInnerNutritionSummary.fromJson(value);
        case 'GetMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInner':
          return GetMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInner.fromJson(value);
        case 'GetRandomRecipes200Response':
          return GetRandomRecipes200Response.fromJson(value);
        case 'GetRecipeEquipmentByID200Response':
          return GetRecipeEquipmentByID200Response.fromJson(value);
        case 'GetRecipeEquipmentByID200ResponseEquipmentInner':
          return GetRecipeEquipmentByID200ResponseEquipmentInner.fromJson(value);
        case 'GetRecipeIngredientsByID200Response':
          return GetRecipeIngredientsByID200Response.fromJson(value);
        case 'GetRecipeIngredientsByID200ResponseIngredientsInner':
          return GetRecipeIngredientsByID200ResponseIngredientsInner.fromJson(value);
        case 'GetRecipeNutritionWidgetByID200Response':
          return GetRecipeNutritionWidgetByID200Response.fromJson(value);
        case 'GetRecipeNutritionWidgetByID200ResponseBadInner':
          return GetRecipeNutritionWidgetByID200ResponseBadInner.fromJson(value);
        case 'GetRecipeNutritionWidgetByID200ResponseGoodInner':
          return GetRecipeNutritionWidgetByID200ResponseGoodInner.fromJson(value);
        case 'GetRecipePriceBreakdownByID200Response':
          return GetRecipePriceBreakdownByID200Response.fromJson(value);
        case 'GetRecipePriceBreakdownByID200ResponseIngredientsInner':
          return GetRecipePriceBreakdownByID200ResponseIngredientsInner.fromJson(value);
        case 'GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount':
          return GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount.fromJson(value);
        case 'GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric':
          return GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric.fromJson(value);
        case 'GetShoppingList200Response':
          return GetShoppingList200Response.fromJson(value);
        case 'GetShoppingList200ResponseAislesInner':
          return GetShoppingList200ResponseAislesInner.fromJson(value);
        case 'GetShoppingList200ResponseAislesInnerItemsInner':
          return GetShoppingList200ResponseAislesInnerItemsInner.fromJson(value);
        case 'GetShoppingList200ResponseAislesInnerItemsInnerMeasures':
          return GetShoppingList200ResponseAislesInnerItemsInnerMeasures.fromJson(value);
        case 'GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal':
          return GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal.fromJson(value);
        case 'GetSimilarRecipes200ResponseInner':
          return GetSimilarRecipes200ResponseInner.fromJson(value);
        case 'GetWineDescription200Response':
          return GetWineDescription200Response.fromJson(value);
        case 'GetWinePairing200Response':
          return GetWinePairing200Response.fromJson(value);
        case 'GetWinePairing200ResponseProductMatchesInner':
          return GetWinePairing200ResponseProductMatchesInner.fromJson(value);
        case 'GetWineRecommendation200Response':
          return GetWineRecommendation200Response.fromJson(value);
        case 'GetWineRecommendation200ResponseRecommendedWinesInner':
          return GetWineRecommendation200ResponseRecommendedWinesInner.fromJson(value);
        case 'GuessNutritionByDishName200Response':
          return GuessNutritionByDishName200Response.fromJson(value);
        case 'GuessNutritionByDishName200ResponseCalories':
          return GuessNutritionByDishName200ResponseCalories.fromJson(value);
        case 'GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent':
          return GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent.fromJson(value);
        case 'ImageAnalysisByURL200Response':
          return ImageAnalysisByURL200Response.fromJson(value);
        case 'ImageAnalysisByURL200ResponseCategory':
          return ImageAnalysisByURL200ResponseCategory.fromJson(value);
        case 'ImageAnalysisByURL200ResponseNutrition':
          return ImageAnalysisByURL200ResponseNutrition.fromJson(value);
        case 'ImageAnalysisByURL200ResponseNutritionCalories':
          return ImageAnalysisByURL200ResponseNutritionCalories.fromJson(value);
        case 'ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent':
          return ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent.fromJson(value);
        case 'ImageAnalysisByURL200ResponseRecipesInner':
          return ImageAnalysisByURL200ResponseRecipesInner.fromJson(value);
        case 'ImageClassificationByURL200Response':
          return ImageClassificationByURL200Response.fromJson(value);
        case 'IngredientBasics':
          return IngredientBasics.fromJson(value);
        case 'IngredientInformation':
          return IngredientInformation.fromJson(value);
        case 'IngredientInformationEstimatedCost':
          return IngredientInformationEstimatedCost.fromJson(value);
        case 'IngredientInformationNutrition':
          return IngredientInformationNutrition.fromJson(value);
        case 'IngredientInformationNutritionPropertiesInner':
          return IngredientInformationNutritionPropertiesInner.fromJson(value);
        case 'IngredientSearch200Response':
          return IngredientSearch200Response.fromJson(value);
        case 'IngredientSearch200ResponseResultsInner':
          return IngredientSearch200ResponseResultsInner.fromJson(value);
        case 'MapIngredientsToGroceryProducts200ResponseInner':
          return MapIngredientsToGroceryProducts200ResponseInner.fromJson(value);
        case 'MapIngredientsToGroceryProducts200ResponseInnerProductsInner':
          return MapIngredientsToGroceryProducts200ResponseInnerProductsInner.fromJson(value);
        case 'MapIngredientsToGroceryProductsRequest':
          return MapIngredientsToGroceryProductsRequest.fromJson(value);
        case 'MenuItem':
          return MenuItem.fromJson(value);
        case 'MenuItemServings':
          return MenuItemServings.fromJson(value);
        case 'ProductInformation':
          return ProductInformation.fromJson(value);
        case 'ProductInformationCredits':
          return ProductInformationCredits.fromJson(value);
        case 'QuickAnswer200Response':
          return QuickAnswer200Response.fromJson(value);
        case 'RecipeInformation':
          return RecipeInformation.fromJson(value);
        case 'RecipeInformationExtendedIngredientsInner':
          return RecipeInformationExtendedIngredientsInner.fromJson(value);
        case 'RecipeInformationExtendedIngredientsInnerMeasures':
          return RecipeInformationExtendedIngredientsInnerMeasures.fromJson(value);
        case 'RecipeInformationExtendedIngredientsInnerMeasuresMetric':
          return RecipeInformationExtendedIngredientsInnerMeasuresMetric.fromJson(value);
        case 'RecipeInformationWinePairing':
          return RecipeInformationWinePairing.fromJson(value);
        case 'RecipeInformationWinePairingProductMatchesInner':
          return RecipeInformationWinePairingProductMatchesInner.fromJson(value);
        case 'SearchAllFood200Response':
          return SearchAllFood200Response.fromJson(value);
        case 'SearchAllFood200ResponseSearchResultsInner':
          return SearchAllFood200ResponseSearchResultsInner.fromJson(value);
        case 'SearchCustomFoods200Response':
          return SearchCustomFoods200Response.fromJson(value);
        case 'SearchCustomFoods200ResponseCustomFoodsInner':
          return SearchCustomFoods200ResponseCustomFoodsInner.fromJson(value);
        case 'SearchFoodVideos200Response':
          return SearchFoodVideos200Response.fromJson(value);
        case 'SearchFoodVideos200ResponseVideosInner':
          return SearchFoodVideos200ResponseVideosInner.fromJson(value);
        case 'SearchGroceryProducts200Response':
          return SearchGroceryProducts200Response.fromJson(value);
        case 'SearchGroceryProductsByUPC200Response':
          return SearchGroceryProductsByUPC200Response.fromJson(value);
        case 'SearchGroceryProductsByUPC200ResponseNutrition':
          return SearchGroceryProductsByUPC200ResponseNutrition.fromJson(value);
        case 'SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown':
          return SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown.fromJson(value);
        case 'SearchGroceryProductsByUPC200ResponseNutritionNutrientsInner':
          return SearchGroceryProductsByUPC200ResponseNutritionNutrientsInner.fromJson(value);
        case 'SearchGroceryProductsByUPC200ResponseServings':
          return SearchGroceryProductsByUPC200ResponseServings.fromJson(value);
        case 'SearchMenuItems200Response':
          return SearchMenuItems200Response.fromJson(value);
        case 'SearchRecipes200Response':
          return SearchRecipes200Response.fromJson(value);
        case 'SearchRecipes200ResponseResultsInner':
          return SearchRecipes200ResponseResultsInner.fromJson(value);
        case 'SearchRecipesByIngredients200ResponseInner':
          return SearchRecipesByIngredients200ResponseInner.fromJson(value);
        case 'SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner':
          return SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner.fromJson(value);
        case 'SearchRecipesByNutrients200ResponseInner':
          return SearchRecipesByNutrients200ResponseInner.fromJson(value);
        case 'SearchRestaurants200Response':
          return SearchRestaurants200Response.fromJson(value);
        case 'SearchRestaurants200ResponseRestaurantsInner':
          return SearchRestaurants200ResponseRestaurantsInner.fromJson(value);
        case 'SearchRestaurants200ResponseRestaurantsInnerAddress':
          return SearchRestaurants200ResponseRestaurantsInnerAddress.fromJson(value);
        case 'SearchRestaurants200ResponseRestaurantsInnerLocalHours':
          return SearchRestaurants200ResponseRestaurantsInnerLocalHours.fromJson(value);
        case 'SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational':
          return SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational.fromJson(value);
        case 'SearchResult':
          return SearchResult.fromJson(value);
        case 'SearchSiteContent200Response':
          return SearchSiteContent200Response.fromJson(value);
        case 'SummarizeRecipe200Response':
          return SummarizeRecipe200Response.fromJson(value);
        case 'TalkToChatbot200Response':
          return TalkToChatbot200Response.fromJson(value);
        case 'TalkToChatbot200ResponseMediaInner':
          return TalkToChatbot200ResponseMediaInner.fromJson(value);
        case 'TasteInformation':
          return TasteInformation.fromJson(value);
        default:
          dynamic match;
          if (value is List && (match = _regList.firstMatch(targetType)?.group(1)) != null) {
            return value
              .map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,))
              .toList(growable: growable);
          }
          if (value is Set && (match = _regSet.firstMatch(targetType)?.group(1)) != null) {
            return value
              .map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,))
              .toSet();
          }
          if (value is Map && (match = _regMap.firstMatch(targetType)?.group(1)) != null) {
            return Map<String, dynamic>.fromIterables(
              value.keys.cast<String>(),
              value.values.map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,)),
            );
          }
      }
    } on Exception catch (error, trace) {
      throw ApiException.withInner(HttpStatus.internalServerError, 'Exception during deserialization.', error, trace,);
    }
    throw ApiException(HttpStatus.internalServerError, 'Could not find a suitable class for deserialization',);
  }
}

/// Primarily intended for use in an isolate.
class DeserializationMessage {
  const DeserializationMessage({
    required this.json,
    required this.targetType,
    this.growable = false,
  });

  /// The JSON value to deserialize.
  final String json;

  /// Target type to deserialize to.
  final String targetType;

  /// Whether to make deserialized lists or maps growable.
  final bool growable;
}

/// Primarily intended for use in an isolate.
Future<dynamic> decodeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
    ? message.json
    : json.decode(message.json);
}

/// Primarily intended for use in an isolate.
Future<dynamic> deserializeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
    ? message.json
    : ApiClient.fromJson(
        json.decode(message.json),
        targetType,
        growable: message.growable,
      );
}

/// Primarily intended for use in an isolate.
Future<String> serializeAsync(Object? value) async => value == null ? '' : json.encode(value);
