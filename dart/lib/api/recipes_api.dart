//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class RecipesApi {
  RecipesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Analyze a Recipe Search Query
  ///
  /// Parse a recipe search query to find out its intention.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] q (required):
  ///   The recipe search query.
  Future<Response> analyzeARecipeSearchQueryWithHttpInfo(String q,) async {
    // ignore: prefer_const_declarations
    final path = r'/recipes/queries/analyze';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'q', q));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Analyze a Recipe Search Query
  ///
  /// Parse a recipe search query to find out its intention.
  ///
  /// Parameters:
  ///
  /// * [String] q (required):
  ///   The recipe search query.
  Future<AnalyzeARecipeSearchQuery200Response?> analyzeARecipeSearchQuery(String q,) async {
    final response = await analyzeARecipeSearchQueryWithHttpInfo(q,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AnalyzeARecipeSearchQuery200Response',) as AnalyzeARecipeSearchQuery200Response;
    
    }
    return null;
  }

  /// Analyze Recipe Instructions
  ///
  /// This endpoint allows you to break down instructions into atomic steps. Furthermore, each step will contain the ingredients and equipment required. Additionally, all ingredients and equipment from the recipe's instructions will be extracted independently of the step they're used in.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] instructions (required):
  ///   The recipe's instructions.
  Future<Response> analyzeRecipeInstructionsWithHttpInfo(String instructions,) async {
    // ignore: prefer_const_declarations
    final path = r'/recipes/analyzeInstructions';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/x-www-form-urlencoded'];

    if (instructions != null) {
      formParams[r'instructions'] = parameterToString(instructions);
    }

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Analyze Recipe Instructions
  ///
  /// This endpoint allows you to break down instructions into atomic steps. Furthermore, each step will contain the ingredients and equipment required. Additionally, all ingredients and equipment from the recipe's instructions will be extracted independently of the step they're used in.
  ///
  /// Parameters:
  ///
  /// * [String] instructions (required):
  ///   The recipe's instructions.
  Future<AnalyzeRecipeInstructions200Response?> analyzeRecipeInstructions(String instructions,) async {
    final response = await analyzeRecipeInstructionsWithHttpInfo(instructions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AnalyzeRecipeInstructions200Response',) as AnalyzeRecipeInstructions200Response;
    
    }
    return null;
  }

  /// Autocomplete Recipe Search
  ///
  /// Autocomplete a partial input to suggest possible recipe names.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] query (required):
  ///   The (natural language) search query.
  ///
  /// * [int] number:
  ///   The maximum number of items to return (between 1 and 100). Defaults to 10.
  Future<Response> autocompleteRecipeSearchWithHttpInfo(String query, { int? number, }) async {
    // ignore: prefer_const_declarations
    final path = r'/recipes/autocomplete';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'query', query));
    if (number != null) {
      queryParams.addAll(_queryParams('', 'number', number));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Autocomplete Recipe Search
  ///
  /// Autocomplete a partial input to suggest possible recipe names.
  ///
  /// Parameters:
  ///
  /// * [String] query (required):
  ///   The (natural language) search query.
  ///
  /// * [int] number:
  ///   The maximum number of items to return (between 1 and 100). Defaults to 10.
  Future<Set<AutocompleteRecipeSearch200ResponseInner>?> autocompleteRecipeSearch(String query, { int? number, }) async {
    final response = await autocompleteRecipeSearchWithHttpInfo(query,  number: number, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'Set<AutocompleteRecipeSearch200ResponseInner>') as List)
        .cast<AutocompleteRecipeSearch200ResponseInner>()
        .toSet();

    }
    return null;
  }

  /// Classify Cuisine
  ///
  /// Classify the recipe's cuisine.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] title (required):
  ///   The title of the recipe.
  ///
  /// * [String] ingredientList (required):
  ///   The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n).
  ///
  /// * [String] language:
  ///   The language of the input. Either 'en' or 'de'.
  Future<Response> classifyCuisineWithHttpInfo(String title, String ingredientList, { String? language, }) async {
    // ignore: prefer_const_declarations
    final path = r'/recipes/cuisine';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (language != null) {
      queryParams.addAll(_queryParams('', 'language', language));
    }

    const contentTypes = <String>['application/x-www-form-urlencoded'];

    if (title != null) {
      formParams[r'title'] = parameterToString(title);
    }
    if (ingredientList != null) {
      formParams[r'ingredientList'] = parameterToString(ingredientList);
    }

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Classify Cuisine
  ///
  /// Classify the recipe's cuisine.
  ///
  /// Parameters:
  ///
  /// * [String] title (required):
  ///   The title of the recipe.
  ///
  /// * [String] ingredientList (required):
  ///   The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n).
  ///
  /// * [String] language:
  ///   The language of the input. Either 'en' or 'de'.
  Future<ClassifyCuisine200Response?> classifyCuisine(String title, String ingredientList, { String? language, }) async {
    final response = await classifyCuisineWithHttpInfo(title, ingredientList,  language: language, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ClassifyCuisine200Response',) as ClassifyCuisine200Response;
    
    }
    return null;
  }

  /// Compute Glycemic Load
  ///
  /// Retrieve the glycemic index for a list of ingredients and compute the individual and total glycemic load.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ComputeGlycemicLoadRequest] computeGlycemicLoadRequest (required):
  ///
  /// * [String] language:
  ///   The language of the input. Either 'en' or 'de'.
  Future<Response> computeGlycemicLoadWithHttpInfo(ComputeGlycemicLoadRequest computeGlycemicLoadRequest, { String? language, }) async {
    // ignore: prefer_const_declarations
    final path = r'/food/ingredients/glycemicLoad';

    // ignore: prefer_final_locals
    Object? postBody = computeGlycemicLoadRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (language != null) {
      queryParams.addAll(_queryParams('', 'language', language));
    }

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Compute Glycemic Load
  ///
  /// Retrieve the glycemic index for a list of ingredients and compute the individual and total glycemic load.
  ///
  /// Parameters:
  ///
  /// * [ComputeGlycemicLoadRequest] computeGlycemicLoadRequest (required):
  ///
  /// * [String] language:
  ///   The language of the input. Either 'en' or 'de'.
  Future<ComputeGlycemicLoad200Response?> computeGlycemicLoad(ComputeGlycemicLoadRequest computeGlycemicLoadRequest, { String? language, }) async {
    final response = await computeGlycemicLoadWithHttpInfo(computeGlycemicLoadRequest,  language: language, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ComputeGlycemicLoad200Response',) as ComputeGlycemicLoad200Response;
    
    }
    return null;
  }

  /// Convert Amounts
  ///
  /// Convert amounts like \"2 cups of flour to grams\".
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ingredientName (required):
  ///   The ingredient which you want to convert.
  ///
  /// * [num] sourceAmount (required):
  ///   The amount from which you want to convert, e.g. the 2.5 in \"2.5 cups of flour to grams\".
  ///
  /// * [String] sourceUnit (required):
  ///   The unit from which you want to convert, e.g. the grams in \"2.5 cups of flour to grams\". You can also use \"piece\", e.g. \"3.4 oz tomatoes to piece\"
  ///
  /// * [String] targetUnit (required):
  ///   The unit to which you want to convert, e.g. the grams in \"2.5 cups of flour to grams\". You can also use \"piece\", e.g. \"3.4 oz tomatoes to piece\"
  Future<Response> convertAmountsWithHttpInfo(String ingredientName, num sourceAmount, String sourceUnit, String targetUnit,) async {
    // ignore: prefer_const_declarations
    final path = r'/recipes/convert';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'ingredientName', ingredientName));
      queryParams.addAll(_queryParams('', 'sourceAmount', sourceAmount));
      queryParams.addAll(_queryParams('', 'sourceUnit', sourceUnit));
      queryParams.addAll(_queryParams('', 'targetUnit', targetUnit));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Convert Amounts
  ///
  /// Convert amounts like \"2 cups of flour to grams\".
  ///
  /// Parameters:
  ///
  /// * [String] ingredientName (required):
  ///   The ingredient which you want to convert.
  ///
  /// * [num] sourceAmount (required):
  ///   The amount from which you want to convert, e.g. the 2.5 in \"2.5 cups of flour to grams\".
  ///
  /// * [String] sourceUnit (required):
  ///   The unit from which you want to convert, e.g. the grams in \"2.5 cups of flour to grams\". You can also use \"piece\", e.g. \"3.4 oz tomatoes to piece\"
  ///
  /// * [String] targetUnit (required):
  ///   The unit to which you want to convert, e.g. the grams in \"2.5 cups of flour to grams\". You can also use \"piece\", e.g. \"3.4 oz tomatoes to piece\"
  Future<ConvertAmounts200Response?> convertAmounts(String ingredientName, num sourceAmount, String sourceUnit, String targetUnit,) async {
    final response = await convertAmountsWithHttpInfo(ingredientName, sourceAmount, sourceUnit, targetUnit,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ConvertAmounts200Response',) as ConvertAmounts200Response;
    
    }
    return null;
  }

  /// Create Recipe Card
  ///
  /// Generate a recipe card for a recipe.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] title (required):
  ///   The title of the recipe.
  ///
  /// * [String] ingredients (required):
  ///   The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n).
  ///
  /// * [String] instructions (required):
  ///   The instructions to make the recipe. One step per line (separate lines with \\\\n).
  ///
  /// * [num] readyInMinutes (required):
  ///   The number of minutes it takes to get the recipe on the table.
  ///
  /// * [num] servings (required):
  ///   The number of servings the recipe makes.
  ///
  /// * [String] mask (required):
  ///   The mask to put over the recipe image ('ellipseMask', 'diamondMask', 'starMask', 'heartMask', 'potMask', 'fishMask').
  ///
  /// * [String] backgroundImage (required):
  ///   The background image ('none', 'background1', or 'background2').
  ///
  /// * [MultipartFile] image:
  ///   The binary image of the recipe as jpg.
  ///
  /// * [String] imageUrl:
  ///   If you do not sent a binary image you can also pass the image URL.
  ///
  /// * [String] author:
  ///   The author of the recipe.
  ///
  /// * [String] backgroundColor:
  ///   The background color for the recipe card as a hex-string.
  ///
  /// * [String] fontColor:
  ///   The font color for the recipe card as a hex-string.
  ///
  /// * [String] source_:
  ///   The source of the recipe.
  Future<Response> createRecipeCardWithHttpInfo(String title, String ingredients, String instructions, num readyInMinutes, num servings, String mask, String backgroundImage, { MultipartFile? image, String? imageUrl, String? author, String? backgroundColor, String? fontColor, String? source_, }) async {
    // ignore: prefer_const_declarations
    final path = r'/recipes/visualizeRecipe';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse(path));
    if (title != null) {
      hasFields = true;
      mp.fields[r'title'] = parameterToString(title);
    }
    if (ingredients != null) {
      hasFields = true;
      mp.fields[r'ingredients'] = parameterToString(ingredients);
    }
    if (instructions != null) {
      hasFields = true;
      mp.fields[r'instructions'] = parameterToString(instructions);
    }
    if (readyInMinutes != null) {
      hasFields = true;
      mp.fields[r'readyInMinutes'] = parameterToString(readyInMinutes);
    }
    if (servings != null) {
      hasFields = true;
      mp.fields[r'servings'] = parameterToString(servings);
    }
    if (mask != null) {
      hasFields = true;
      mp.fields[r'mask'] = parameterToString(mask);
    }
    if (backgroundImage != null) {
      hasFields = true;
      mp.fields[r'backgroundImage'] = parameterToString(backgroundImage);
    }
    if (image != null) {
      hasFields = true;
      mp.fields[r'image'] = image.field;
      mp.files.add(image);
    }
    if (imageUrl != null) {
      hasFields = true;
      mp.fields[r'imageUrl'] = parameterToString(imageUrl);
    }
    if (author != null) {
      hasFields = true;
      mp.fields[r'author'] = parameterToString(author);
    }
    if (backgroundColor != null) {
      hasFields = true;
      mp.fields[r'backgroundColor'] = parameterToString(backgroundColor);
    }
    if (fontColor != null) {
      hasFields = true;
      mp.fields[r'fontColor'] = parameterToString(fontColor);
    }
    if (source_ != null) {
      hasFields = true;
      mp.fields[r'source'] = parameterToString(source_);
    }
    if (hasFields) {
      postBody = mp;
    }

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create Recipe Card
  ///
  /// Generate a recipe card for a recipe.
  ///
  /// Parameters:
  ///
  /// * [String] title (required):
  ///   The title of the recipe.
  ///
  /// * [String] ingredients (required):
  ///   The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n).
  ///
  /// * [String] instructions (required):
  ///   The instructions to make the recipe. One step per line (separate lines with \\\\n).
  ///
  /// * [num] readyInMinutes (required):
  ///   The number of minutes it takes to get the recipe on the table.
  ///
  /// * [num] servings (required):
  ///   The number of servings the recipe makes.
  ///
  /// * [String] mask (required):
  ///   The mask to put over the recipe image ('ellipseMask', 'diamondMask', 'starMask', 'heartMask', 'potMask', 'fishMask').
  ///
  /// * [String] backgroundImage (required):
  ///   The background image ('none', 'background1', or 'background2').
  ///
  /// * [MultipartFile] image:
  ///   The binary image of the recipe as jpg.
  ///
  /// * [String] imageUrl:
  ///   If you do not sent a binary image you can also pass the image URL.
  ///
  /// * [String] author:
  ///   The author of the recipe.
  ///
  /// * [String] backgroundColor:
  ///   The background color for the recipe card as a hex-string.
  ///
  /// * [String] fontColor:
  ///   The font color for the recipe card as a hex-string.
  ///
  /// * [String] source_:
  ///   The source of the recipe.
  Future<CreateRecipeCard200Response?> createRecipeCard(String title, String ingredients, String instructions, num readyInMinutes, num servings, String mask, String backgroundImage, { MultipartFile? image, String? imageUrl, String? author, String? backgroundColor, String? fontColor, String? source_, }) async {
    final response = await createRecipeCardWithHttpInfo(title, ingredients, instructions, readyInMinutes, servings, mask, backgroundImage,  image: image, imageUrl: imageUrl, author: author, backgroundColor: backgroundColor, fontColor: fontColor, source_: source_, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateRecipeCard200Response',) as CreateRecipeCard200Response;
    
    }
    return null;
  }

  /// Equipment by ID Image
  ///
  /// Visualize a recipe's equipment list as an image.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The recipe id.
  Future<Response> equipmentByIDImageWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/recipes/{id}/equipmentWidget.png'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Equipment by ID Image
  ///
  /// Visualize a recipe's equipment list as an image.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The recipe id.
  Future<MultipartFile?> equipmentByIDImage(int id,) async {
    final response = await equipmentByIDImageWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MultipartFile',) as MultipartFile;
    
    }
    return null;
  }

  /// Extract Recipe from Website
  ///
  /// This endpoint lets you extract recipe data such as title, ingredients, and instructions from any properly formatted Website.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] url (required):
  ///   The URL of the recipe page.
  ///
  /// * [bool] forceExtraction:
  ///   If true, the extraction will be triggered whether we already know the recipe or not. Use this only if information is missing as this operation is slower.
  ///
  /// * [bool] analyze:
  ///   If true, the recipe will be analyzed and classified resolving in more data such as cuisines, dish types, and more.
  ///
  /// * [bool] includeNutrition:
  ///   Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings.
  ///
  /// * [bool] includeTaste:
  ///   Whether taste data should be added to correctly parsed ingredients.
  Future<Response> extractRecipeFromWebsiteWithHttpInfo(String url, { bool? forceExtraction, bool? analyze, bool? includeNutrition, bool? includeTaste, }) async {
    // ignore: prefer_const_declarations
    final path = r'/recipes/extract';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'url', url));
    if (forceExtraction != null) {
      queryParams.addAll(_queryParams('', 'forceExtraction', forceExtraction));
    }
    if (analyze != null) {
      queryParams.addAll(_queryParams('', 'analyze', analyze));
    }
    if (includeNutrition != null) {
      queryParams.addAll(_queryParams('', 'includeNutrition', includeNutrition));
    }
    if (includeTaste != null) {
      queryParams.addAll(_queryParams('', 'includeTaste', includeTaste));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Extract Recipe from Website
  ///
  /// This endpoint lets you extract recipe data such as title, ingredients, and instructions from any properly formatted Website.
  ///
  /// Parameters:
  ///
  /// * [String] url (required):
  ///   The URL of the recipe page.
  ///
  /// * [bool] forceExtraction:
  ///   If true, the extraction will be triggered whether we already know the recipe or not. Use this only if information is missing as this operation is slower.
  ///
  /// * [bool] analyze:
  ///   If true, the recipe will be analyzed and classified resolving in more data such as cuisines, dish types, and more.
  ///
  /// * [bool] includeNutrition:
  ///   Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings.
  ///
  /// * [bool] includeTaste:
  ///   Whether taste data should be added to correctly parsed ingredients.
  Future<RecipeInformation?> extractRecipeFromWebsite(String url, { bool? forceExtraction, bool? analyze, bool? includeNutrition, bool? includeTaste, }) async {
    final response = await extractRecipeFromWebsiteWithHttpInfo(url,  forceExtraction: forceExtraction, analyze: analyze, includeNutrition: includeNutrition, includeTaste: includeTaste, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RecipeInformation',) as RecipeInformation;
    
    }
    return null;
  }

  /// Get Analyzed Recipe Instructions
  ///
  /// Get an analyzed breakdown of a recipe's instructions. Each step is enriched with the ingredients and equipment required.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The recipe id.
  ///
  /// * [bool] stepBreakdown:
  ///   Whether to break down the recipe steps even more.
  Future<Response> getAnalyzedRecipeInstructionsWithHttpInfo(int id, { bool? stepBreakdown, }) async {
    // ignore: prefer_const_declarations
    final path = r'/recipes/{id}/analyzedInstructions'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (stepBreakdown != null) {
      queryParams.addAll(_queryParams('', 'stepBreakdown', stepBreakdown));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Analyzed Recipe Instructions
  ///
  /// Get an analyzed breakdown of a recipe's instructions. Each step is enriched with the ingredients and equipment required.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The recipe id.
  ///
  /// * [bool] stepBreakdown:
  ///   Whether to break down the recipe steps even more.
  Future<List<GetAnalyzedRecipeInstructions200ResponseInner>?> getAnalyzedRecipeInstructions(int id, { bool? stepBreakdown, }) async {
    final response = await getAnalyzedRecipeInstructionsWithHttpInfo(id,  stepBreakdown: stepBreakdown, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<GetAnalyzedRecipeInstructions200ResponseInner>') as List)
        .cast<GetAnalyzedRecipeInstructions200ResponseInner>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get Random Recipes
  ///
  /// Find random (popular) recipes. If you need to filter recipes by diet, nutrition etc. you might want to consider using the complex recipe search endpoint and set the sort request parameter to random.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [bool] includeNutrition:
  ///   Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings.
  ///
  /// * [String] includeTags:
  ///   A comma-separated list of tags that the random recipe(s) must adhere to.
  ///
  /// * [String] excludeTags:
  ///   A comma-separated list of tags that the random recipe(s) must not adhere to.
  ///
  /// * [int] number:
  ///   The maximum number of items to return (between 1 and 100). Defaults to 10.
  Future<Response> getRandomRecipesWithHttpInfo({ bool? includeNutrition, String? includeTags, String? excludeTags, int? number, }) async {
    // ignore: prefer_const_declarations
    final path = r'/recipes/random';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (includeNutrition != null) {
      queryParams.addAll(_queryParams('', 'includeNutrition', includeNutrition));
    }
    if (includeTags != null) {
      queryParams.addAll(_queryParams('', 'include-tags', includeTags));
    }
    if (excludeTags != null) {
      queryParams.addAll(_queryParams('', 'exclude-tags', excludeTags));
    }
    if (number != null) {
      queryParams.addAll(_queryParams('', 'number', number));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Random Recipes
  ///
  /// Find random (popular) recipes. If you need to filter recipes by diet, nutrition etc. you might want to consider using the complex recipe search endpoint and set the sort request parameter to random.
  ///
  /// Parameters:
  ///
  /// * [bool] includeNutrition:
  ///   Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings.
  ///
  /// * [String] includeTags:
  ///   A comma-separated list of tags that the random recipe(s) must adhere to.
  ///
  /// * [String] excludeTags:
  ///   A comma-separated list of tags that the random recipe(s) must not adhere to.
  ///
  /// * [int] number:
  ///   The maximum number of items to return (between 1 and 100). Defaults to 10.
  Future<GetRandomRecipes200Response?> getRandomRecipes({ bool? includeNutrition, String? includeTags, String? excludeTags, int? number, }) async {
    final response = await getRandomRecipesWithHttpInfo( includeNutrition: includeNutrition, includeTags: includeTags, excludeTags: excludeTags, number: number, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetRandomRecipes200Response',) as GetRandomRecipes200Response;
    
    }
    return null;
  }

  /// Equipment by ID
  ///
  /// Get a recipe's equipment list.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The recipe id.
  Future<Response> getRecipeEquipmentByIDWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/recipes/{id}/equipmentWidget.json'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Equipment by ID
  ///
  /// Get a recipe's equipment list.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The recipe id.
  Future<GetRecipeEquipmentByID200Response?> getRecipeEquipmentByID(int id,) async {
    final response = await getRecipeEquipmentByIDWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetRecipeEquipmentByID200Response',) as GetRecipeEquipmentByID200Response;
    
    }
    return null;
  }

  /// Get Recipe Information
  ///
  /// Use a recipe id to get full information about a recipe, such as ingredients, nutrition, diet and allergen information, etc.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The id of the recipe.
  ///
  /// * [bool] includeNutrition:
  ///   Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings.
  ///
  /// * [bool] addWinePairing:
  ///   Add a wine pairing to the recipe.
  ///
  /// * [bool] addTasteData:
  ///   Add taste data to the recipe.
  Future<Response> getRecipeInformationWithHttpInfo(int id, { bool? includeNutrition, bool? addWinePairing, bool? addTasteData, }) async {
    // ignore: prefer_const_declarations
    final path = r'/recipes/{id}/information'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (includeNutrition != null) {
      queryParams.addAll(_queryParams('', 'includeNutrition', includeNutrition));
    }
    if (addWinePairing != null) {
      queryParams.addAll(_queryParams('', 'addWinePairing', addWinePairing));
    }
    if (addTasteData != null) {
      queryParams.addAll(_queryParams('', 'addTasteData', addTasteData));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Recipe Information
  ///
  /// Use a recipe id to get full information about a recipe, such as ingredients, nutrition, diet and allergen information, etc.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The id of the recipe.
  ///
  /// * [bool] includeNutrition:
  ///   Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings.
  ///
  /// * [bool] addWinePairing:
  ///   Add a wine pairing to the recipe.
  ///
  /// * [bool] addTasteData:
  ///   Add taste data to the recipe.
  Future<RecipeInformation?> getRecipeInformation(int id, { bool? includeNutrition, bool? addWinePairing, bool? addTasteData, }) async {
    final response = await getRecipeInformationWithHttpInfo(id,  includeNutrition: includeNutrition, addWinePairing: addWinePairing, addTasteData: addTasteData, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RecipeInformation',) as RecipeInformation;
    
    }
    return null;
  }

  /// Get Recipe Information Bulk
  ///
  /// Get information about multiple recipes at once. This is equivalent to calling the Get Recipe Information endpoint multiple times, but faster.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ids (required):
  ///   A comma-separated list of recipe ids.
  ///
  /// * [bool] includeNutrition:
  ///   Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings.
  Future<Response> getRecipeInformationBulkWithHttpInfo(String ids, { bool? includeNutrition, }) async {
    // ignore: prefer_const_declarations
    final path = r'/recipes/informationBulk';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'ids', ids));
    if (includeNutrition != null) {
      queryParams.addAll(_queryParams('', 'includeNutrition', includeNutrition));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Recipe Information Bulk
  ///
  /// Get information about multiple recipes at once. This is equivalent to calling the Get Recipe Information endpoint multiple times, but faster.
  ///
  /// Parameters:
  ///
  /// * [String] ids (required):
  ///   A comma-separated list of recipe ids.
  ///
  /// * [bool] includeNutrition:
  ///   Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings.
  Future<Set<RecipeInformation>?> getRecipeInformationBulk(String ids, { bool? includeNutrition, }) async {
    final response = await getRecipeInformationBulkWithHttpInfo(ids,  includeNutrition: includeNutrition, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'Set<RecipeInformation>') as List)
        .cast<RecipeInformation>()
        .toSet();

    }
    return null;
  }

  /// Ingredients by ID
  ///
  /// Get a recipe's ingredient list.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The recipe id.
  Future<Response> getRecipeIngredientsByIDWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/recipes/{id}/ingredientWidget.json'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Ingredients by ID
  ///
  /// Get a recipe's ingredient list.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The recipe id.
  Future<GetRecipeIngredientsByID200Response?> getRecipeIngredientsByID(int id,) async {
    final response = await getRecipeIngredientsByIDWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetRecipeIngredientsByID200Response',) as GetRecipeIngredientsByID200Response;
    
    }
    return null;
  }

  /// Nutrition by ID
  ///
  /// Get a recipe's nutrition data.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The recipe id.
  Future<Response> getRecipeNutritionWidgetByIDWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/recipes/{id}/nutritionWidget.json'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Nutrition by ID
  ///
  /// Get a recipe's nutrition data.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The recipe id.
  Future<GetRecipeNutritionWidgetByID200Response?> getRecipeNutritionWidgetByID(int id,) async {
    final response = await getRecipeNutritionWidgetByIDWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetRecipeNutritionWidgetByID200Response',) as GetRecipeNutritionWidgetByID200Response;
    
    }
    return null;
  }

  /// Price Breakdown by ID
  ///
  /// Get a recipe's price breakdown data.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The recipe id.
  Future<Response> getRecipePriceBreakdownByIDWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/recipes/{id}/priceBreakdownWidget.json'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Price Breakdown by ID
  ///
  /// Get a recipe's price breakdown data.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The recipe id.
  Future<GetRecipePriceBreakdownByID200Response?> getRecipePriceBreakdownByID(int id,) async {
    final response = await getRecipePriceBreakdownByIDWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetRecipePriceBreakdownByID200Response',) as GetRecipePriceBreakdownByID200Response;
    
    }
    return null;
  }

  /// Taste by ID
  ///
  /// Get a recipe's taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The recipe id.
  ///
  /// * [bool] normalize:
  ///   Normalize to the strongest taste.
  Future<Response> getRecipeTasteByIDWithHttpInfo(int id, { bool? normalize, }) async {
    // ignore: prefer_const_declarations
    final path = r'/recipes/{id}/tasteWidget.json'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (normalize != null) {
      queryParams.addAll(_queryParams('', 'normalize', normalize));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Taste by ID
  ///
  /// Get a recipe's taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The recipe id.
  ///
  /// * [bool] normalize:
  ///   Normalize to the strongest taste.
  Future<TasteInformation?> getRecipeTasteByID(int id, { bool? normalize, }) async {
    final response = await getRecipeTasteByIDWithHttpInfo(id,  normalize: normalize, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TasteInformation',) as TasteInformation;
    
    }
    return null;
  }

  /// Get Similar Recipes
  ///
  /// Find recipes which are similar to the given one.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The id of the source recipe for which similar recipes should be found.
  ///
  /// * [int] number:
  ///   The maximum number of items to return (between 1 and 100). Defaults to 10.
  Future<Response> getSimilarRecipesWithHttpInfo(int id, { int? number, }) async {
    // ignore: prefer_const_declarations
    final path = r'/recipes/{id}/similar'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (number != null) {
      queryParams.addAll(_queryParams('', 'number', number));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Similar Recipes
  ///
  /// Find recipes which are similar to the given one.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The id of the source recipe for which similar recipes should be found.
  ///
  /// * [int] number:
  ///   The maximum number of items to return (between 1 and 100). Defaults to 10.
  Future<Set<GetSimilarRecipes200ResponseInner>?> getSimilarRecipes(int id, { int? number, }) async {
    final response = await getSimilarRecipesWithHttpInfo(id,  number: number, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'Set<GetSimilarRecipes200ResponseInner>') as List)
        .cast<GetSimilarRecipes200ResponseInner>()
        .toSet();

    }
    return null;
  }

  /// Guess Nutrition by Dish Name
  ///
  /// Estimate the macronutrients of a dish based on its title.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] title (required):
  ///   The title of the dish.
  Future<Response> guessNutritionByDishNameWithHttpInfo(String title,) async {
    // ignore: prefer_const_declarations
    final path = r'/recipes/guessNutrition';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'title', title));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Guess Nutrition by Dish Name
  ///
  /// Estimate the macronutrients of a dish based on its title.
  ///
  /// Parameters:
  ///
  /// * [String] title (required):
  ///   The title of the dish.
  Future<GuessNutritionByDishName200Response?> guessNutritionByDishName(String title,) async {
    final response = await guessNutritionByDishNameWithHttpInfo(title,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GuessNutritionByDishName200Response',) as GuessNutritionByDishName200Response;
    
    }
    return null;
  }

  /// Parse Ingredients
  ///
  /// Extract an ingredient from plain text.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ingredientList (required):
  ///   The ingredient list of the recipe, one ingredient per line.
  ///
  /// * [num] servings (required):
  ///   The number of servings that you can make from the ingredients.
  ///
  /// * [String] language:
  ///   The language of the input. Either 'en' or 'de'.
  ///
  /// * [bool] includeNutrition:
  ///   Whether nutrition data should be added to correctly parsed ingredients.
  Future<Response> parseIngredientsWithHttpInfo(String ingredientList, num servings, { String? language, bool? includeNutrition, }) async {
    // ignore: prefer_const_declarations
    final path = r'/recipes/parseIngredients';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (language != null) {
      queryParams.addAll(_queryParams('', 'language', language));
    }

    const contentTypes = <String>['application/x-www-form-urlencoded'];

    if (ingredientList != null) {
      formParams[r'ingredientList'] = parameterToString(ingredientList);
    }
    if (servings != null) {
      formParams[r'servings'] = parameterToString(servings);
    }
    if (includeNutrition != null) {
      formParams[r'includeNutrition'] = parameterToString(includeNutrition);
    }

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parse Ingredients
  ///
  /// Extract an ingredient from plain text.
  ///
  /// Parameters:
  ///
  /// * [String] ingredientList (required):
  ///   The ingredient list of the recipe, one ingredient per line.
  ///
  /// * [num] servings (required):
  ///   The number of servings that you can make from the ingredients.
  ///
  /// * [String] language:
  ///   The language of the input. Either 'en' or 'de'.
  ///
  /// * [bool] includeNutrition:
  ///   Whether nutrition data should be added to correctly parsed ingredients.
  Future<Set<IngredientInformation>?> parseIngredients(String ingredientList, num servings, { String? language, bool? includeNutrition, }) async {
    final response = await parseIngredientsWithHttpInfo(ingredientList, servings,  language: language, includeNutrition: includeNutrition, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'Set<IngredientInformation>') as List)
        .cast<IngredientInformation>()
        .toSet();

    }
    return null;
  }

  /// Price Breakdown by ID Image
  ///
  /// Visualize a recipe's price breakdown.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The recipe id.
  Future<Response> priceBreakdownByIDImageWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/recipes/{id}/priceBreakdownWidget.png'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Price Breakdown by ID Image
  ///
  /// Visualize a recipe's price breakdown.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The recipe id.
  Future<MultipartFile?> priceBreakdownByIDImage(int id,) async {
    final response = await priceBreakdownByIDImageWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MultipartFile',) as MultipartFile;
    
    }
    return null;
  }

  /// Quick Answer
  ///
  /// Answer a nutrition related natural language question.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] q (required):
  ///   The nutrition related question.
  Future<Response> quickAnswerWithHttpInfo(String q,) async {
    // ignore: prefer_const_declarations
    final path = r'/recipes/quickAnswer';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'q', q));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Quick Answer
  ///
  /// Answer a nutrition related natural language question.
  ///
  /// Parameters:
  ///
  /// * [String] q (required):
  ///   The nutrition related question.
  Future<QuickAnswer200Response?> quickAnswer(String q,) async {
    final response = await quickAnswerWithHttpInfo(q,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'QuickAnswer200Response',) as QuickAnswer200Response;
    
    }
    return null;
  }

  /// Recipe Nutrition by ID Image
  ///
  /// Visualize a recipe's nutritional information as an image.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The recipe id.
  Future<Response> recipeNutritionByIDImageWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/recipes/{id}/nutritionWidget.png'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Recipe Nutrition by ID Image
  ///
  /// Visualize a recipe's nutritional information as an image.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The recipe id.
  Future<MultipartFile?> recipeNutritionByIDImage(int id,) async {
    final response = await recipeNutritionByIDImageWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MultipartFile',) as MultipartFile;
    
    }
    return null;
  }

  /// Recipe Nutrition Label Image
  ///
  /// Get a recipe's nutrition label as an image.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The recipe id.
  ///
  /// * [bool] showOptionalNutrients:
  ///   Whether to show optional nutrients.
  ///
  /// * [bool] showZeroValues:
  ///   Whether to show zero values.
  ///
  /// * [bool] showIngredients:
  ///   Whether to show a list of ingredients.
  Future<Response> recipeNutritionLabelImageWithHttpInfo(int id, { bool? showOptionalNutrients, bool? showZeroValues, bool? showIngredients, }) async {
    // ignore: prefer_const_declarations
    final path = r'/recipes/{id}/nutritionLabel.png'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (showOptionalNutrients != null) {
      queryParams.addAll(_queryParams('', 'showOptionalNutrients', showOptionalNutrients));
    }
    if (showZeroValues != null) {
      queryParams.addAll(_queryParams('', 'showZeroValues', showZeroValues));
    }
    if (showIngredients != null) {
      queryParams.addAll(_queryParams('', 'showIngredients', showIngredients));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Recipe Nutrition Label Image
  ///
  /// Get a recipe's nutrition label as an image.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The recipe id.
  ///
  /// * [bool] showOptionalNutrients:
  ///   Whether to show optional nutrients.
  ///
  /// * [bool] showZeroValues:
  ///   Whether to show zero values.
  ///
  /// * [bool] showIngredients:
  ///   Whether to show a list of ingredients.
  Future<MultipartFile?> recipeNutritionLabelImage(int id, { bool? showOptionalNutrients, bool? showZeroValues, bool? showIngredients, }) async {
    final response = await recipeNutritionLabelImageWithHttpInfo(id,  showOptionalNutrients: showOptionalNutrients, showZeroValues: showZeroValues, showIngredients: showIngredients, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MultipartFile',) as MultipartFile;
    
    }
    return null;
  }

  /// Recipe Nutrition Label Widget
  ///
  /// Get a recipe's nutrition label as an HTML widget.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The recipe id.
  ///
  /// * [bool] defaultCss:
  ///   Whether the default CSS should be added to the response.
  ///
  /// * [bool] showOptionalNutrients:
  ///   Whether to show optional nutrients.
  ///
  /// * [bool] showZeroValues:
  ///   Whether to show zero values.
  ///
  /// * [bool] showIngredients:
  ///   Whether to show a list of ingredients.
  Future<Response> recipeNutritionLabelWidgetWithHttpInfo(int id, { bool? defaultCss, bool? showOptionalNutrients, bool? showZeroValues, bool? showIngredients, }) async {
    // ignore: prefer_const_declarations
    final path = r'/recipes/{id}/nutritionLabel'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (defaultCss != null) {
      queryParams.addAll(_queryParams('', 'defaultCss', defaultCss));
    }
    if (showOptionalNutrients != null) {
      queryParams.addAll(_queryParams('', 'showOptionalNutrients', showOptionalNutrients));
    }
    if (showZeroValues != null) {
      queryParams.addAll(_queryParams('', 'showZeroValues', showZeroValues));
    }
    if (showIngredients != null) {
      queryParams.addAll(_queryParams('', 'showIngredients', showIngredients));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Recipe Nutrition Label Widget
  ///
  /// Get a recipe's nutrition label as an HTML widget.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The recipe id.
  ///
  /// * [bool] defaultCss:
  ///   Whether the default CSS should be added to the response.
  ///
  /// * [bool] showOptionalNutrients:
  ///   Whether to show optional nutrients.
  ///
  /// * [bool] showZeroValues:
  ///   Whether to show zero values.
  ///
  /// * [bool] showIngredients:
  ///   Whether to show a list of ingredients.
  Future<String?> recipeNutritionLabelWidget(int id, { bool? defaultCss, bool? showOptionalNutrients, bool? showZeroValues, bool? showIngredients, }) async {
    final response = await recipeNutritionLabelWidgetWithHttpInfo(id,  defaultCss: defaultCss, showOptionalNutrients: showOptionalNutrients, showZeroValues: showZeroValues, showIngredients: showIngredients, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
    
    }
    return null;
  }

  /// Recipe Taste by ID Image
  ///
  /// Get a recipe's taste as an image. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The recipe id.
  ///
  /// * [bool] normalize:
  ///   Normalize to the strongest taste.
  ///
  /// * [String] rgb:
  ///   Red, green, blue values for the chart color.
  Future<Response> recipeTasteByIDImageWithHttpInfo(int id, { bool? normalize, String? rgb, }) async {
    // ignore: prefer_const_declarations
    final path = r'/recipes/{id}/tasteWidget.png'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (normalize != null) {
      queryParams.addAll(_queryParams('', 'normalize', normalize));
    }
    if (rgb != null) {
      queryParams.addAll(_queryParams('', 'rgb', rgb));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Recipe Taste by ID Image
  ///
  /// Get a recipe's taste as an image. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The recipe id.
  ///
  /// * [bool] normalize:
  ///   Normalize to the strongest taste.
  ///
  /// * [String] rgb:
  ///   Red, green, blue values for the chart color.
  Future<MultipartFile?> recipeTasteByIDImage(int id, { bool? normalize, String? rgb, }) async {
    final response = await recipeTasteByIDImageWithHttpInfo(id,  normalize: normalize, rgb: rgb, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MultipartFile',) as MultipartFile;
    
    }
    return null;
  }

  /// Search Recipes
  ///
  /// Search through hundreds of thousands of recipes using advanced filtering and ranking. NOTE: This method combines searching by query, by ingredients, and by nutrients into one endpoint.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] query (required):
  ///   The (natural language) search query.
  ///
  /// * [String] cuisine:
  ///   The cuisine(s) of the recipes. One or more, comma separated (will be interpreted as 'OR'). See a full list of supported cuisines.
  ///
  /// * [String] excludeCuisine:
  ///   The cuisine(s) the recipes must not match. One or more, comma separated (will be interpreted as 'AND'). See a full list of supported cuisines.
  ///
  /// * [String] diet:
  ///   The diet for which the recipes must be suitable. See a full list of supported diets.
  ///
  /// * [String] intolerances:
  ///   A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.
  ///
  /// * [String] equipment:
  ///   The equipment required. Multiple values will be interpreted as 'or'. For example, value could be \"blender, frying pan, bowl\".
  ///
  /// * [String] includeIngredients:
  ///   A comma-separated list of ingredients that should/must be used in the recipes.
  ///
  /// * [String] excludeIngredients:
  ///   A comma-separated list of ingredients or ingredient types that the recipes must not contain.
  ///
  /// * [String] type:
  ///   The type of recipe. See a full list of supported meal types.
  ///
  /// * [bool] instructionsRequired:
  ///   Whether the recipes must have instructions.
  ///
  /// * [bool] fillIngredients:
  ///   Add information about the ingredients and whether they are used or missing in relation to the query.
  ///
  /// * [bool] addRecipeInformation:
  ///   If set to true, you get more information about the recipes returned.
  ///
  /// * [bool] addRecipeNutrition:
  ///   If set to true, you get nutritional information about each recipes returned.
  ///
  /// * [String] author:
  ///   The username of the recipe author.
  ///
  /// * [String] tags:
  ///   The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have.
  ///
  /// * [int] recipeBoxId:
  ///   The id of the recipe box to which the search should be limited to.
  ///
  /// * [String] titleMatch:
  ///   Enter text that must be found in the title of the recipes.
  ///
  /// * [num] maxReadyTime:
  ///   The maximum time in minutes it should take to prepare and cook the recipe.
  ///
  /// * [num] minServings:
  ///   The minimum amount of servings the recipe is for.
  ///
  /// * [num] maxServings:
  ///   The maximum amount of servings the recipe is for.
  ///
  /// * [bool] ignorePantry:
  ///   Whether to ignore typical pantry items, such as water, salt, flour, etc.
  ///
  /// * [String] sort:
  ///   The strategy to sort recipes by. See a full list of supported sorting options.
  ///
  /// * [String] sortDirection:
  ///   The direction in which to sort. Must be either 'asc' (ascending) or 'desc' (descending).
  ///
  /// * [num] minCarbs:
  ///   The minimum amount of carbohydrates in grams the recipe must have.
  ///
  /// * [num] maxCarbs:
  ///   The maximum amount of carbohydrates in grams the recipe can have.
  ///
  /// * [num] minProtein:
  ///   The minimum amount of protein in grams the recipe must have.
  ///
  /// * [num] maxProtein:
  ///   The maximum amount of protein in grams the recipe can have.
  ///
  /// * [num] minCalories:
  ///   The minimum amount of calories the recipe must have.
  ///
  /// * [num] maxCalories:
  ///   The maximum amount of calories the recipe can have.
  ///
  /// * [num] minFat:
  ///   The minimum amount of fat in grams the recipe must have.
  ///
  /// * [num] maxFat:
  ///   The maximum amount of fat in grams the recipe can have.
  ///
  /// * [num] minAlcohol:
  ///   The minimum amount of alcohol in grams the recipe must have.
  ///
  /// * [num] maxAlcohol:
  ///   The maximum amount of alcohol in grams the recipe can have.
  ///
  /// * [num] minCaffeine:
  ///   The minimum amount of caffeine in milligrams the recipe must have.
  ///
  /// * [num] maxCaffeine:
  ///   The maximum amount of caffeine in milligrams the recipe can have.
  ///
  /// * [num] minCopper:
  ///   The minimum amount of copper in milligrams the recipe must have.
  ///
  /// * [num] maxCopper:
  ///   The maximum amount of copper in milligrams the recipe can have.
  ///
  /// * [num] minCalcium:
  ///   The minimum amount of calcium in milligrams the recipe must have.
  ///
  /// * [num] maxCalcium:
  ///   The maximum amount of calcium in milligrams the recipe can have.
  ///
  /// * [num] minCholine:
  ///   The minimum amount of choline in milligrams the recipe must have.
  ///
  /// * [num] maxCholine:
  ///   The maximum amount of choline in milligrams the recipe can have.
  ///
  /// * [num] minCholesterol:
  ///   The minimum amount of cholesterol in milligrams the recipe must have.
  ///
  /// * [num] maxCholesterol:
  ///   The maximum amount of cholesterol in milligrams the recipe can have.
  ///
  /// * [num] minFluoride:
  ///   The minimum amount of fluoride in milligrams the recipe must have.
  ///
  /// * [num] maxFluoride:
  ///   The maximum amount of fluoride in milligrams the recipe can have.
  ///
  /// * [num] minSaturatedFat:
  ///   The minimum amount of saturated fat in grams the recipe must have.
  ///
  /// * [num] maxSaturatedFat:
  ///   The maximum amount of saturated fat in grams the recipe can have.
  ///
  /// * [num] minVitaminA:
  ///   The minimum amount of Vitamin A in IU the recipe must have.
  ///
  /// * [num] maxVitaminA:
  ///   The maximum amount of Vitamin A in IU the recipe can have.
  ///
  /// * [num] minVitaminC:
  ///   The minimum amount of Vitamin C milligrams the recipe must have.
  ///
  /// * [num] maxVitaminC:
  ///   The maximum amount of Vitamin C in milligrams the recipe can have.
  ///
  /// * [num] minVitaminD:
  ///   The minimum amount of Vitamin D in micrograms the recipe must have.
  ///
  /// * [num] maxVitaminD:
  ///   The maximum amount of Vitamin D in micrograms the recipe can have.
  ///
  /// * [num] minVitaminE:
  ///   The minimum amount of Vitamin E in milligrams the recipe must have.
  ///
  /// * [num] maxVitaminE:
  ///   The maximum amount of Vitamin E in milligrams the recipe can have.
  ///
  /// * [num] minVitaminK:
  ///   The minimum amount of Vitamin K in micrograms the recipe must have.
  ///
  /// * [num] maxVitaminK:
  ///   The maximum amount of Vitamin K in micrograms the recipe can have.
  ///
  /// * [num] minVitaminB1:
  ///   The minimum amount of Vitamin B1 in milligrams the recipe must have.
  ///
  /// * [num] maxVitaminB1:
  ///   The maximum amount of Vitamin B1 in milligrams the recipe can have.
  ///
  /// * [num] minVitaminB2:
  ///   The minimum amount of Vitamin B2 in milligrams the recipe must have.
  ///
  /// * [num] maxVitaminB2:
  ///   The maximum amount of Vitamin B2 in milligrams the recipe can have.
  ///
  /// * [num] minVitaminB5:
  ///   The minimum amount of Vitamin B5 in milligrams the recipe must have.
  ///
  /// * [num] maxVitaminB5:
  ///   The maximum amount of Vitamin B5 in milligrams the recipe can have.
  ///
  /// * [num] minVitaminB3:
  ///   The minimum amount of Vitamin B3 in milligrams the recipe must have.
  ///
  /// * [num] maxVitaminB3:
  ///   The maximum amount of Vitamin B3 in milligrams the recipe can have.
  ///
  /// * [num] minVitaminB6:
  ///   The minimum amount of Vitamin B6 in milligrams the recipe must have.
  ///
  /// * [num] maxVitaminB6:
  ///   The maximum amount of Vitamin B6 in milligrams the recipe can have.
  ///
  /// * [num] minVitaminB12:
  ///   The minimum amount of Vitamin B12 in micrograms the recipe must have.
  ///
  /// * [num] maxVitaminB12:
  ///   The maximum amount of Vitamin B12 in micrograms the recipe can have.
  ///
  /// * [num] minFiber:
  ///   The minimum amount of fiber in grams the recipe must have.
  ///
  /// * [num] maxFiber:
  ///   The maximum amount of fiber in grams the recipe can have.
  ///
  /// * [num] minFolate:
  ///   The minimum amount of folate in micrograms the recipe must have.
  ///
  /// * [num] maxFolate:
  ///   The maximum amount of folate in micrograms the recipe can have.
  ///
  /// * [num] minFolicAcid:
  ///   The minimum amount of folic acid in micrograms the recipe must have.
  ///
  /// * [num] maxFolicAcid:
  ///   The maximum amount of folic acid in micrograms the recipe can have.
  ///
  /// * [num] minIodine:
  ///   The minimum amount of iodine in micrograms the recipe must have.
  ///
  /// * [num] maxIodine:
  ///   The maximum amount of iodine in micrograms the recipe can have.
  ///
  /// * [num] minIron:
  ///   The minimum amount of iron in milligrams the recipe must have.
  ///
  /// * [num] maxIron:
  ///   The maximum amount of iron in milligrams the recipe can have.
  ///
  /// * [num] minMagnesium:
  ///   The minimum amount of magnesium in milligrams the recipe must have.
  ///
  /// * [num] maxMagnesium:
  ///   The maximum amount of magnesium in milligrams the recipe can have.
  ///
  /// * [num] minManganese:
  ///   The minimum amount of manganese in milligrams the recipe must have.
  ///
  /// * [num] maxManganese:
  ///   The maximum amount of manganese in milligrams the recipe can have.
  ///
  /// * [num] minPhosphorus:
  ///   The minimum amount of phosphorus in milligrams the recipe must have.
  ///
  /// * [num] maxPhosphorus:
  ///   The maximum amount of phosphorus in milligrams the recipe can have.
  ///
  /// * [num] minPotassium:
  ///   The minimum amount of potassium in milligrams the recipe must have.
  ///
  /// * [num] maxPotassium:
  ///   The maximum amount of potassium in milligrams the recipe can have.
  ///
  /// * [num] minSelenium:
  ///   The minimum amount of selenium in micrograms the recipe must have.
  ///
  /// * [num] maxSelenium:
  ///   The maximum amount of selenium in micrograms the recipe can have.
  ///
  /// * [num] minSodium:
  ///   The minimum amount of sodium in milligrams the recipe must have.
  ///
  /// * [num] maxSodium:
  ///   The maximum amount of sodium in milligrams the recipe can have.
  ///
  /// * [num] minSugar:
  ///   The minimum amount of sugar in grams the recipe must have.
  ///
  /// * [num] maxSugar:
  ///   The maximum amount of sugar in grams the recipe can have.
  ///
  /// * [num] minZinc:
  ///   The minimum amount of zinc in milligrams the recipe must have.
  ///
  /// * [num] maxZinc:
  ///   The maximum amount of zinc in milligrams the recipe can have.
  ///
  /// * [int] offset:
  ///   The number of results to skip (between 0 and 900).
  ///
  /// * [int] number:
  ///   The maximum number of items to return (between 1 and 100). Defaults to 10.
  Future<Response> searchRecipesWithHttpInfo(String query, { String? cuisine, String? excludeCuisine, String? diet, String? intolerances, String? equipment, String? includeIngredients, String? excludeIngredients, String? type, bool? instructionsRequired, bool? fillIngredients, bool? addRecipeInformation, bool? addRecipeNutrition, String? author, String? tags, int? recipeBoxId, String? titleMatch, num? maxReadyTime, num? minServings, num? maxServings, bool? ignorePantry, String? sort, String? sortDirection, num? minCarbs, num? maxCarbs, num? minProtein, num? maxProtein, num? minCalories, num? maxCalories, num? minFat, num? maxFat, num? minAlcohol, num? maxAlcohol, num? minCaffeine, num? maxCaffeine, num? minCopper, num? maxCopper, num? minCalcium, num? maxCalcium, num? minCholine, num? maxCholine, num? minCholesterol, num? maxCholesterol, num? minFluoride, num? maxFluoride, num? minSaturatedFat, num? maxSaturatedFat, num? minVitaminA, num? maxVitaminA, num? minVitaminC, num? maxVitaminC, num? minVitaminD, num? maxVitaminD, num? minVitaminE, num? maxVitaminE, num? minVitaminK, num? maxVitaminK, num? minVitaminB1, num? maxVitaminB1, num? minVitaminB2, num? maxVitaminB2, num? minVitaminB5, num? maxVitaminB5, num? minVitaminB3, num? maxVitaminB3, num? minVitaminB6, num? maxVitaminB6, num? minVitaminB12, num? maxVitaminB12, num? minFiber, num? maxFiber, num? minFolate, num? maxFolate, num? minFolicAcid, num? maxFolicAcid, num? minIodine, num? maxIodine, num? minIron, num? maxIron, num? minMagnesium, num? maxMagnesium, num? minManganese, num? maxManganese, num? minPhosphorus, num? maxPhosphorus, num? minPotassium, num? maxPotassium, num? minSelenium, num? maxSelenium, num? minSodium, num? maxSodium, num? minSugar, num? maxSugar, num? minZinc, num? maxZinc, int? offset, int? number, }) async {
    // ignore: prefer_const_declarations
    final path = r'/recipes/complexSearch';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'query', query));
    if (cuisine != null) {
      queryParams.addAll(_queryParams('', 'cuisine', cuisine));
    }
    if (excludeCuisine != null) {
      queryParams.addAll(_queryParams('', 'excludeCuisine', excludeCuisine));
    }
    if (diet != null) {
      queryParams.addAll(_queryParams('', 'diet', diet));
    }
    if (intolerances != null) {
      queryParams.addAll(_queryParams('', 'intolerances', intolerances));
    }
    if (equipment != null) {
      queryParams.addAll(_queryParams('', 'equipment', equipment));
    }
    if (includeIngredients != null) {
      queryParams.addAll(_queryParams('', 'includeIngredients', includeIngredients));
    }
    if (excludeIngredients != null) {
      queryParams.addAll(_queryParams('', 'excludeIngredients', excludeIngredients));
    }
    if (type != null) {
      queryParams.addAll(_queryParams('', 'type', type));
    }
    if (instructionsRequired != null) {
      queryParams.addAll(_queryParams('', 'instructionsRequired', instructionsRequired));
    }
    if (fillIngredients != null) {
      queryParams.addAll(_queryParams('', 'fillIngredients', fillIngredients));
    }
    if (addRecipeInformation != null) {
      queryParams.addAll(_queryParams('', 'addRecipeInformation', addRecipeInformation));
    }
    if (addRecipeNutrition != null) {
      queryParams.addAll(_queryParams('', 'addRecipeNutrition', addRecipeNutrition));
    }
    if (author != null) {
      queryParams.addAll(_queryParams('', 'author', author));
    }
    if (tags != null) {
      queryParams.addAll(_queryParams('', 'tags', tags));
    }
    if (recipeBoxId != null) {
      queryParams.addAll(_queryParams('', 'recipeBoxId', recipeBoxId));
    }
    if (titleMatch != null) {
      queryParams.addAll(_queryParams('', 'titleMatch', titleMatch));
    }
    if (maxReadyTime != null) {
      queryParams.addAll(_queryParams('', 'maxReadyTime', maxReadyTime));
    }
    if (minServings != null) {
      queryParams.addAll(_queryParams('', 'minServings', minServings));
    }
    if (maxServings != null) {
      queryParams.addAll(_queryParams('', 'maxServings', maxServings));
    }
    if (ignorePantry != null) {
      queryParams.addAll(_queryParams('', 'ignorePantry', ignorePantry));
    }
    if (sort != null) {
      queryParams.addAll(_queryParams('', 'sort', sort));
    }
    if (sortDirection != null) {
      queryParams.addAll(_queryParams('', 'sortDirection', sortDirection));
    }
    if (minCarbs != null) {
      queryParams.addAll(_queryParams('', 'minCarbs', minCarbs));
    }
    if (maxCarbs != null) {
      queryParams.addAll(_queryParams('', 'maxCarbs', maxCarbs));
    }
    if (minProtein != null) {
      queryParams.addAll(_queryParams('', 'minProtein', minProtein));
    }
    if (maxProtein != null) {
      queryParams.addAll(_queryParams('', 'maxProtein', maxProtein));
    }
    if (minCalories != null) {
      queryParams.addAll(_queryParams('', 'minCalories', minCalories));
    }
    if (maxCalories != null) {
      queryParams.addAll(_queryParams('', 'maxCalories', maxCalories));
    }
    if (minFat != null) {
      queryParams.addAll(_queryParams('', 'minFat', minFat));
    }
    if (maxFat != null) {
      queryParams.addAll(_queryParams('', 'maxFat', maxFat));
    }
    if (minAlcohol != null) {
      queryParams.addAll(_queryParams('', 'minAlcohol', minAlcohol));
    }
    if (maxAlcohol != null) {
      queryParams.addAll(_queryParams('', 'maxAlcohol', maxAlcohol));
    }
    if (minCaffeine != null) {
      queryParams.addAll(_queryParams('', 'minCaffeine', minCaffeine));
    }
    if (maxCaffeine != null) {
      queryParams.addAll(_queryParams('', 'maxCaffeine', maxCaffeine));
    }
    if (minCopper != null) {
      queryParams.addAll(_queryParams('', 'minCopper', minCopper));
    }
    if (maxCopper != null) {
      queryParams.addAll(_queryParams('', 'maxCopper', maxCopper));
    }
    if (minCalcium != null) {
      queryParams.addAll(_queryParams('', 'minCalcium', minCalcium));
    }
    if (maxCalcium != null) {
      queryParams.addAll(_queryParams('', 'maxCalcium', maxCalcium));
    }
    if (minCholine != null) {
      queryParams.addAll(_queryParams('', 'minCholine', minCholine));
    }
    if (maxCholine != null) {
      queryParams.addAll(_queryParams('', 'maxCholine', maxCholine));
    }
    if (minCholesterol != null) {
      queryParams.addAll(_queryParams('', 'minCholesterol', minCholesterol));
    }
    if (maxCholesterol != null) {
      queryParams.addAll(_queryParams('', 'maxCholesterol', maxCholesterol));
    }
    if (minFluoride != null) {
      queryParams.addAll(_queryParams('', 'minFluoride', minFluoride));
    }
    if (maxFluoride != null) {
      queryParams.addAll(_queryParams('', 'maxFluoride', maxFluoride));
    }
    if (minSaturatedFat != null) {
      queryParams.addAll(_queryParams('', 'minSaturatedFat', minSaturatedFat));
    }
    if (maxSaturatedFat != null) {
      queryParams.addAll(_queryParams('', 'maxSaturatedFat', maxSaturatedFat));
    }
    if (minVitaminA != null) {
      queryParams.addAll(_queryParams('', 'minVitaminA', minVitaminA));
    }
    if (maxVitaminA != null) {
      queryParams.addAll(_queryParams('', 'maxVitaminA', maxVitaminA));
    }
    if (minVitaminC != null) {
      queryParams.addAll(_queryParams('', 'minVitaminC', minVitaminC));
    }
    if (maxVitaminC != null) {
      queryParams.addAll(_queryParams('', 'maxVitaminC', maxVitaminC));
    }
    if (minVitaminD != null) {
      queryParams.addAll(_queryParams('', 'minVitaminD', minVitaminD));
    }
    if (maxVitaminD != null) {
      queryParams.addAll(_queryParams('', 'maxVitaminD', maxVitaminD));
    }
    if (minVitaminE != null) {
      queryParams.addAll(_queryParams('', 'minVitaminE', minVitaminE));
    }
    if (maxVitaminE != null) {
      queryParams.addAll(_queryParams('', 'maxVitaminE', maxVitaminE));
    }
    if (minVitaminK != null) {
      queryParams.addAll(_queryParams('', 'minVitaminK', minVitaminK));
    }
    if (maxVitaminK != null) {
      queryParams.addAll(_queryParams('', 'maxVitaminK', maxVitaminK));
    }
    if (minVitaminB1 != null) {
      queryParams.addAll(_queryParams('', 'minVitaminB1', minVitaminB1));
    }
    if (maxVitaminB1 != null) {
      queryParams.addAll(_queryParams('', 'maxVitaminB1', maxVitaminB1));
    }
    if (minVitaminB2 != null) {
      queryParams.addAll(_queryParams('', 'minVitaminB2', minVitaminB2));
    }
    if (maxVitaminB2 != null) {
      queryParams.addAll(_queryParams('', 'maxVitaminB2', maxVitaminB2));
    }
    if (minVitaminB5 != null) {
      queryParams.addAll(_queryParams('', 'minVitaminB5', minVitaminB5));
    }
    if (maxVitaminB5 != null) {
      queryParams.addAll(_queryParams('', 'maxVitaminB5', maxVitaminB5));
    }
    if (minVitaminB3 != null) {
      queryParams.addAll(_queryParams('', 'minVitaminB3', minVitaminB3));
    }
    if (maxVitaminB3 != null) {
      queryParams.addAll(_queryParams('', 'maxVitaminB3', maxVitaminB3));
    }
    if (minVitaminB6 != null) {
      queryParams.addAll(_queryParams('', 'minVitaminB6', minVitaminB6));
    }
    if (maxVitaminB6 != null) {
      queryParams.addAll(_queryParams('', 'maxVitaminB6', maxVitaminB6));
    }
    if (minVitaminB12 != null) {
      queryParams.addAll(_queryParams('', 'minVitaminB12', minVitaminB12));
    }
    if (maxVitaminB12 != null) {
      queryParams.addAll(_queryParams('', 'maxVitaminB12', maxVitaminB12));
    }
    if (minFiber != null) {
      queryParams.addAll(_queryParams('', 'minFiber', minFiber));
    }
    if (maxFiber != null) {
      queryParams.addAll(_queryParams('', 'maxFiber', maxFiber));
    }
    if (minFolate != null) {
      queryParams.addAll(_queryParams('', 'minFolate', minFolate));
    }
    if (maxFolate != null) {
      queryParams.addAll(_queryParams('', 'maxFolate', maxFolate));
    }
    if (minFolicAcid != null) {
      queryParams.addAll(_queryParams('', 'minFolicAcid', minFolicAcid));
    }
    if (maxFolicAcid != null) {
      queryParams.addAll(_queryParams('', 'maxFolicAcid', maxFolicAcid));
    }
    if (minIodine != null) {
      queryParams.addAll(_queryParams('', 'minIodine', minIodine));
    }
    if (maxIodine != null) {
      queryParams.addAll(_queryParams('', 'maxIodine', maxIodine));
    }
    if (minIron != null) {
      queryParams.addAll(_queryParams('', 'minIron', minIron));
    }
    if (maxIron != null) {
      queryParams.addAll(_queryParams('', 'maxIron', maxIron));
    }
    if (minMagnesium != null) {
      queryParams.addAll(_queryParams('', 'minMagnesium', minMagnesium));
    }
    if (maxMagnesium != null) {
      queryParams.addAll(_queryParams('', 'maxMagnesium', maxMagnesium));
    }
    if (minManganese != null) {
      queryParams.addAll(_queryParams('', 'minManganese', minManganese));
    }
    if (maxManganese != null) {
      queryParams.addAll(_queryParams('', 'maxManganese', maxManganese));
    }
    if (minPhosphorus != null) {
      queryParams.addAll(_queryParams('', 'minPhosphorus', minPhosphorus));
    }
    if (maxPhosphorus != null) {
      queryParams.addAll(_queryParams('', 'maxPhosphorus', maxPhosphorus));
    }
    if (minPotassium != null) {
      queryParams.addAll(_queryParams('', 'minPotassium', minPotassium));
    }
    if (maxPotassium != null) {
      queryParams.addAll(_queryParams('', 'maxPotassium', maxPotassium));
    }
    if (minSelenium != null) {
      queryParams.addAll(_queryParams('', 'minSelenium', minSelenium));
    }
    if (maxSelenium != null) {
      queryParams.addAll(_queryParams('', 'maxSelenium', maxSelenium));
    }
    if (minSodium != null) {
      queryParams.addAll(_queryParams('', 'minSodium', minSodium));
    }
    if (maxSodium != null) {
      queryParams.addAll(_queryParams('', 'maxSodium', maxSodium));
    }
    if (minSugar != null) {
      queryParams.addAll(_queryParams('', 'minSugar', minSugar));
    }
    if (maxSugar != null) {
      queryParams.addAll(_queryParams('', 'maxSugar', maxSugar));
    }
    if (minZinc != null) {
      queryParams.addAll(_queryParams('', 'minZinc', minZinc));
    }
    if (maxZinc != null) {
      queryParams.addAll(_queryParams('', 'maxZinc', maxZinc));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }
    if (number != null) {
      queryParams.addAll(_queryParams('', 'number', number));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Search Recipes
  ///
  /// Search through hundreds of thousands of recipes using advanced filtering and ranking. NOTE: This method combines searching by query, by ingredients, and by nutrients into one endpoint.
  ///
  /// Parameters:
  ///
  /// * [String] query (required):
  ///   The (natural language) search query.
  ///
  /// * [String] cuisine:
  ///   The cuisine(s) of the recipes. One or more, comma separated (will be interpreted as 'OR'). See a full list of supported cuisines.
  ///
  /// * [String] excludeCuisine:
  ///   The cuisine(s) the recipes must not match. One or more, comma separated (will be interpreted as 'AND'). See a full list of supported cuisines.
  ///
  /// * [String] diet:
  ///   The diet for which the recipes must be suitable. See a full list of supported diets.
  ///
  /// * [String] intolerances:
  ///   A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.
  ///
  /// * [String] equipment:
  ///   The equipment required. Multiple values will be interpreted as 'or'. For example, value could be \"blender, frying pan, bowl\".
  ///
  /// * [String] includeIngredients:
  ///   A comma-separated list of ingredients that should/must be used in the recipes.
  ///
  /// * [String] excludeIngredients:
  ///   A comma-separated list of ingredients or ingredient types that the recipes must not contain.
  ///
  /// * [String] type:
  ///   The type of recipe. See a full list of supported meal types.
  ///
  /// * [bool] instructionsRequired:
  ///   Whether the recipes must have instructions.
  ///
  /// * [bool] fillIngredients:
  ///   Add information about the ingredients and whether they are used or missing in relation to the query.
  ///
  /// * [bool] addRecipeInformation:
  ///   If set to true, you get more information about the recipes returned.
  ///
  /// * [bool] addRecipeNutrition:
  ///   If set to true, you get nutritional information about each recipes returned.
  ///
  /// * [String] author:
  ///   The username of the recipe author.
  ///
  /// * [String] tags:
  ///   The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have.
  ///
  /// * [int] recipeBoxId:
  ///   The id of the recipe box to which the search should be limited to.
  ///
  /// * [String] titleMatch:
  ///   Enter text that must be found in the title of the recipes.
  ///
  /// * [num] maxReadyTime:
  ///   The maximum time in minutes it should take to prepare and cook the recipe.
  ///
  /// * [num] minServings:
  ///   The minimum amount of servings the recipe is for.
  ///
  /// * [num] maxServings:
  ///   The maximum amount of servings the recipe is for.
  ///
  /// * [bool] ignorePantry:
  ///   Whether to ignore typical pantry items, such as water, salt, flour, etc.
  ///
  /// * [String] sort:
  ///   The strategy to sort recipes by. See a full list of supported sorting options.
  ///
  /// * [String] sortDirection:
  ///   The direction in which to sort. Must be either 'asc' (ascending) or 'desc' (descending).
  ///
  /// * [num] minCarbs:
  ///   The minimum amount of carbohydrates in grams the recipe must have.
  ///
  /// * [num] maxCarbs:
  ///   The maximum amount of carbohydrates in grams the recipe can have.
  ///
  /// * [num] minProtein:
  ///   The minimum amount of protein in grams the recipe must have.
  ///
  /// * [num] maxProtein:
  ///   The maximum amount of protein in grams the recipe can have.
  ///
  /// * [num] minCalories:
  ///   The minimum amount of calories the recipe must have.
  ///
  /// * [num] maxCalories:
  ///   The maximum amount of calories the recipe can have.
  ///
  /// * [num] minFat:
  ///   The minimum amount of fat in grams the recipe must have.
  ///
  /// * [num] maxFat:
  ///   The maximum amount of fat in grams the recipe can have.
  ///
  /// * [num] minAlcohol:
  ///   The minimum amount of alcohol in grams the recipe must have.
  ///
  /// * [num] maxAlcohol:
  ///   The maximum amount of alcohol in grams the recipe can have.
  ///
  /// * [num] minCaffeine:
  ///   The minimum amount of caffeine in milligrams the recipe must have.
  ///
  /// * [num] maxCaffeine:
  ///   The maximum amount of caffeine in milligrams the recipe can have.
  ///
  /// * [num] minCopper:
  ///   The minimum amount of copper in milligrams the recipe must have.
  ///
  /// * [num] maxCopper:
  ///   The maximum amount of copper in milligrams the recipe can have.
  ///
  /// * [num] minCalcium:
  ///   The minimum amount of calcium in milligrams the recipe must have.
  ///
  /// * [num] maxCalcium:
  ///   The maximum amount of calcium in milligrams the recipe can have.
  ///
  /// * [num] minCholine:
  ///   The minimum amount of choline in milligrams the recipe must have.
  ///
  /// * [num] maxCholine:
  ///   The maximum amount of choline in milligrams the recipe can have.
  ///
  /// * [num] minCholesterol:
  ///   The minimum amount of cholesterol in milligrams the recipe must have.
  ///
  /// * [num] maxCholesterol:
  ///   The maximum amount of cholesterol in milligrams the recipe can have.
  ///
  /// * [num] minFluoride:
  ///   The minimum amount of fluoride in milligrams the recipe must have.
  ///
  /// * [num] maxFluoride:
  ///   The maximum amount of fluoride in milligrams the recipe can have.
  ///
  /// * [num] minSaturatedFat:
  ///   The minimum amount of saturated fat in grams the recipe must have.
  ///
  /// * [num] maxSaturatedFat:
  ///   The maximum amount of saturated fat in grams the recipe can have.
  ///
  /// * [num] minVitaminA:
  ///   The minimum amount of Vitamin A in IU the recipe must have.
  ///
  /// * [num] maxVitaminA:
  ///   The maximum amount of Vitamin A in IU the recipe can have.
  ///
  /// * [num] minVitaminC:
  ///   The minimum amount of Vitamin C milligrams the recipe must have.
  ///
  /// * [num] maxVitaminC:
  ///   The maximum amount of Vitamin C in milligrams the recipe can have.
  ///
  /// * [num] minVitaminD:
  ///   The minimum amount of Vitamin D in micrograms the recipe must have.
  ///
  /// * [num] maxVitaminD:
  ///   The maximum amount of Vitamin D in micrograms the recipe can have.
  ///
  /// * [num] minVitaminE:
  ///   The minimum amount of Vitamin E in milligrams the recipe must have.
  ///
  /// * [num] maxVitaminE:
  ///   The maximum amount of Vitamin E in milligrams the recipe can have.
  ///
  /// * [num] minVitaminK:
  ///   The minimum amount of Vitamin K in micrograms the recipe must have.
  ///
  /// * [num] maxVitaminK:
  ///   The maximum amount of Vitamin K in micrograms the recipe can have.
  ///
  /// * [num] minVitaminB1:
  ///   The minimum amount of Vitamin B1 in milligrams the recipe must have.
  ///
  /// * [num] maxVitaminB1:
  ///   The maximum amount of Vitamin B1 in milligrams the recipe can have.
  ///
  /// * [num] minVitaminB2:
  ///   The minimum amount of Vitamin B2 in milligrams the recipe must have.
  ///
  /// * [num] maxVitaminB2:
  ///   The maximum amount of Vitamin B2 in milligrams the recipe can have.
  ///
  /// * [num] minVitaminB5:
  ///   The minimum amount of Vitamin B5 in milligrams the recipe must have.
  ///
  /// * [num] maxVitaminB5:
  ///   The maximum amount of Vitamin B5 in milligrams the recipe can have.
  ///
  /// * [num] minVitaminB3:
  ///   The minimum amount of Vitamin B3 in milligrams the recipe must have.
  ///
  /// * [num] maxVitaminB3:
  ///   The maximum amount of Vitamin B3 in milligrams the recipe can have.
  ///
  /// * [num] minVitaminB6:
  ///   The minimum amount of Vitamin B6 in milligrams the recipe must have.
  ///
  /// * [num] maxVitaminB6:
  ///   The maximum amount of Vitamin B6 in milligrams the recipe can have.
  ///
  /// * [num] minVitaminB12:
  ///   The minimum amount of Vitamin B12 in micrograms the recipe must have.
  ///
  /// * [num] maxVitaminB12:
  ///   The maximum amount of Vitamin B12 in micrograms the recipe can have.
  ///
  /// * [num] minFiber:
  ///   The minimum amount of fiber in grams the recipe must have.
  ///
  /// * [num] maxFiber:
  ///   The maximum amount of fiber in grams the recipe can have.
  ///
  /// * [num] minFolate:
  ///   The minimum amount of folate in micrograms the recipe must have.
  ///
  /// * [num] maxFolate:
  ///   The maximum amount of folate in micrograms the recipe can have.
  ///
  /// * [num] minFolicAcid:
  ///   The minimum amount of folic acid in micrograms the recipe must have.
  ///
  /// * [num] maxFolicAcid:
  ///   The maximum amount of folic acid in micrograms the recipe can have.
  ///
  /// * [num] minIodine:
  ///   The minimum amount of iodine in micrograms the recipe must have.
  ///
  /// * [num] maxIodine:
  ///   The maximum amount of iodine in micrograms the recipe can have.
  ///
  /// * [num] minIron:
  ///   The minimum amount of iron in milligrams the recipe must have.
  ///
  /// * [num] maxIron:
  ///   The maximum amount of iron in milligrams the recipe can have.
  ///
  /// * [num] minMagnesium:
  ///   The minimum amount of magnesium in milligrams the recipe must have.
  ///
  /// * [num] maxMagnesium:
  ///   The maximum amount of magnesium in milligrams the recipe can have.
  ///
  /// * [num] minManganese:
  ///   The minimum amount of manganese in milligrams the recipe must have.
  ///
  /// * [num] maxManganese:
  ///   The maximum amount of manganese in milligrams the recipe can have.
  ///
  /// * [num] minPhosphorus:
  ///   The minimum amount of phosphorus in milligrams the recipe must have.
  ///
  /// * [num] maxPhosphorus:
  ///   The maximum amount of phosphorus in milligrams the recipe can have.
  ///
  /// * [num] minPotassium:
  ///   The minimum amount of potassium in milligrams the recipe must have.
  ///
  /// * [num] maxPotassium:
  ///   The maximum amount of potassium in milligrams the recipe can have.
  ///
  /// * [num] minSelenium:
  ///   The minimum amount of selenium in micrograms the recipe must have.
  ///
  /// * [num] maxSelenium:
  ///   The maximum amount of selenium in micrograms the recipe can have.
  ///
  /// * [num] minSodium:
  ///   The minimum amount of sodium in milligrams the recipe must have.
  ///
  /// * [num] maxSodium:
  ///   The maximum amount of sodium in milligrams the recipe can have.
  ///
  /// * [num] minSugar:
  ///   The minimum amount of sugar in grams the recipe must have.
  ///
  /// * [num] maxSugar:
  ///   The maximum amount of sugar in grams the recipe can have.
  ///
  /// * [num] minZinc:
  ///   The minimum amount of zinc in milligrams the recipe must have.
  ///
  /// * [num] maxZinc:
  ///   The maximum amount of zinc in milligrams the recipe can have.
  ///
  /// * [int] offset:
  ///   The number of results to skip (between 0 and 900).
  ///
  /// * [int] number:
  ///   The maximum number of items to return (between 1 and 100). Defaults to 10.
  Future<SearchRecipes200Response?> searchRecipes(String query, { String? cuisine, String? excludeCuisine, String? diet, String? intolerances, String? equipment, String? includeIngredients, String? excludeIngredients, String? type, bool? instructionsRequired, bool? fillIngredients, bool? addRecipeInformation, bool? addRecipeNutrition, String? author, String? tags, int? recipeBoxId, String? titleMatch, num? maxReadyTime, num? minServings, num? maxServings, bool? ignorePantry, String? sort, String? sortDirection, num? minCarbs, num? maxCarbs, num? minProtein, num? maxProtein, num? minCalories, num? maxCalories, num? minFat, num? maxFat, num? minAlcohol, num? maxAlcohol, num? minCaffeine, num? maxCaffeine, num? minCopper, num? maxCopper, num? minCalcium, num? maxCalcium, num? minCholine, num? maxCholine, num? minCholesterol, num? maxCholesterol, num? minFluoride, num? maxFluoride, num? minSaturatedFat, num? maxSaturatedFat, num? minVitaminA, num? maxVitaminA, num? minVitaminC, num? maxVitaminC, num? minVitaminD, num? maxVitaminD, num? minVitaminE, num? maxVitaminE, num? minVitaminK, num? maxVitaminK, num? minVitaminB1, num? maxVitaminB1, num? minVitaminB2, num? maxVitaminB2, num? minVitaminB5, num? maxVitaminB5, num? minVitaminB3, num? maxVitaminB3, num? minVitaminB6, num? maxVitaminB6, num? minVitaminB12, num? maxVitaminB12, num? minFiber, num? maxFiber, num? minFolate, num? maxFolate, num? minFolicAcid, num? maxFolicAcid, num? minIodine, num? maxIodine, num? minIron, num? maxIron, num? minMagnesium, num? maxMagnesium, num? minManganese, num? maxManganese, num? minPhosphorus, num? maxPhosphorus, num? minPotassium, num? maxPotassium, num? minSelenium, num? maxSelenium, num? minSodium, num? maxSodium, num? minSugar, num? maxSugar, num? minZinc, num? maxZinc, int? offset, int? number, }) async {
    final response = await searchRecipesWithHttpInfo(query,  cuisine: cuisine, excludeCuisine: excludeCuisine, diet: diet, intolerances: intolerances, equipment: equipment, includeIngredients: includeIngredients, excludeIngredients: excludeIngredients, type: type, instructionsRequired: instructionsRequired, fillIngredients: fillIngredients, addRecipeInformation: addRecipeInformation, addRecipeNutrition: addRecipeNutrition, author: author, tags: tags, recipeBoxId: recipeBoxId, titleMatch: titleMatch, maxReadyTime: maxReadyTime, minServings: minServings, maxServings: maxServings, ignorePantry: ignorePantry, sort: sort, sortDirection: sortDirection, minCarbs: minCarbs, maxCarbs: maxCarbs, minProtein: minProtein, maxProtein: maxProtein, minCalories: minCalories, maxCalories: maxCalories, minFat: minFat, maxFat: maxFat, minAlcohol: minAlcohol, maxAlcohol: maxAlcohol, minCaffeine: minCaffeine, maxCaffeine: maxCaffeine, minCopper: minCopper, maxCopper: maxCopper, minCalcium: minCalcium, maxCalcium: maxCalcium, minCholine: minCholine, maxCholine: maxCholine, minCholesterol: minCholesterol, maxCholesterol: maxCholesterol, minFluoride: minFluoride, maxFluoride: maxFluoride, minSaturatedFat: minSaturatedFat, maxSaturatedFat: maxSaturatedFat, minVitaminA: minVitaminA, maxVitaminA: maxVitaminA, minVitaminC: minVitaminC, maxVitaminC: maxVitaminC, minVitaminD: minVitaminD, maxVitaminD: maxVitaminD, minVitaminE: minVitaminE, maxVitaminE: maxVitaminE, minVitaminK: minVitaminK, maxVitaminK: maxVitaminK, minVitaminB1: minVitaminB1, maxVitaminB1: maxVitaminB1, minVitaminB2: minVitaminB2, maxVitaminB2: maxVitaminB2, minVitaminB5: minVitaminB5, maxVitaminB5: maxVitaminB5, minVitaminB3: minVitaminB3, maxVitaminB3: maxVitaminB3, minVitaminB6: minVitaminB6, maxVitaminB6: maxVitaminB6, minVitaminB12: minVitaminB12, maxVitaminB12: maxVitaminB12, minFiber: minFiber, maxFiber: maxFiber, minFolate: minFolate, maxFolate: maxFolate, minFolicAcid: minFolicAcid, maxFolicAcid: maxFolicAcid, minIodine: minIodine, maxIodine: maxIodine, minIron: minIron, maxIron: maxIron, minMagnesium: minMagnesium, maxMagnesium: maxMagnesium, minManganese: minManganese, maxManganese: maxManganese, minPhosphorus: minPhosphorus, maxPhosphorus: maxPhosphorus, minPotassium: minPotassium, maxPotassium: maxPotassium, minSelenium: minSelenium, maxSelenium: maxSelenium, minSodium: minSodium, maxSodium: maxSodium, minSugar: minSugar, maxSugar: maxSugar, minZinc: minZinc, maxZinc: maxZinc, offset: offset, number: number, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SearchRecipes200Response',) as SearchRecipes200Response;
    
    }
    return null;
  }

  /// Search Recipes by Ingredients
  ///
  ///  Ever wondered what recipes you can cook with the ingredients you have in your fridge or pantry? This endpoint lets you find recipes that either maximize the usage of ingredients you have at hand (pre shopping) or minimize the ingredients that you don't currently have (post shopping).         
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ingredients (required):
  ///   A comma-separated list of ingredients that the recipes should contain.
  ///
  /// * [int] number:
  ///   The maximum number of items to return (between 1 and 100). Defaults to 10.
  ///
  /// * [int] ranking:
  ///   Whether to maximize used ingredients (1) or minimize missing ingredients (2) first.
  ///
  /// * [bool] ignorePantry:
  ///   Whether to ignore typical pantry items, such as water, salt, flour, etc.
  Future<Response> searchRecipesByIngredientsWithHttpInfo(String ingredients, { int? number, int? ranking, bool? ignorePantry, }) async {
    // ignore: prefer_const_declarations
    final path = r'/recipes/findByIngredients';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'ingredients', ingredients));
    if (number != null) {
      queryParams.addAll(_queryParams('', 'number', number));
    }
    if (ranking != null) {
      queryParams.addAll(_queryParams('', 'ranking', ranking));
    }
    if (ignorePantry != null) {
      queryParams.addAll(_queryParams('', 'ignorePantry', ignorePantry));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Search Recipes by Ingredients
  ///
  ///  Ever wondered what recipes you can cook with the ingredients you have in your fridge or pantry? This endpoint lets you find recipes that either maximize the usage of ingredients you have at hand (pre shopping) or minimize the ingredients that you don't currently have (post shopping).         
  ///
  /// Parameters:
  ///
  /// * [String] ingredients (required):
  ///   A comma-separated list of ingredients that the recipes should contain.
  ///
  /// * [int] number:
  ///   The maximum number of items to return (between 1 and 100). Defaults to 10.
  ///
  /// * [int] ranking:
  ///   Whether to maximize used ingredients (1) or minimize missing ingredients (2) first.
  ///
  /// * [bool] ignorePantry:
  ///   Whether to ignore typical pantry items, such as water, salt, flour, etc.
  Future<Set<SearchRecipesByIngredients200ResponseInner>?> searchRecipesByIngredients(String ingredients, { int? number, int? ranking, bool? ignorePantry, }) async {
    final response = await searchRecipesByIngredientsWithHttpInfo(ingredients,  number: number, ranking: ranking, ignorePantry: ignorePantry, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'Set<SearchRecipesByIngredients200ResponseInner>') as List)
        .cast<SearchRecipesByIngredients200ResponseInner>()
        .toSet();

    }
    return null;
  }

  /// Search Recipes by Nutrients
  ///
  /// Find a set of recipes that adhere to the given nutritional limits. You may set limits for macronutrients (calories, protein, fat, and carbohydrate) and/or many micronutrients.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] minCarbs:
  ///   The minimum amount of carbohydrates in grams the recipe must have.
  ///
  /// * [num] maxCarbs:
  ///   The maximum amount of carbohydrates in grams the recipe can have.
  ///
  /// * [num] minProtein:
  ///   The minimum amount of protein in grams the recipe must have.
  ///
  /// * [num] maxProtein:
  ///   The maximum amount of protein in grams the recipe can have.
  ///
  /// * [num] minCalories:
  ///   The minimum amount of calories the recipe must have.
  ///
  /// * [num] maxCalories:
  ///   The maximum amount of calories the recipe can have.
  ///
  /// * [num] minFat:
  ///   The minimum amount of fat in grams the recipe must have.
  ///
  /// * [num] maxFat:
  ///   The maximum amount of fat in grams the recipe can have.
  ///
  /// * [num] minAlcohol:
  ///   The minimum amount of alcohol in grams the recipe must have.
  ///
  /// * [num] maxAlcohol:
  ///   The maximum amount of alcohol in grams the recipe can have.
  ///
  /// * [num] minCaffeine:
  ///   The minimum amount of caffeine in milligrams the recipe must have.
  ///
  /// * [num] maxCaffeine:
  ///   The maximum amount of caffeine in milligrams the recipe can have.
  ///
  /// * [num] minCopper:
  ///   The minimum amount of copper in milligrams the recipe must have.
  ///
  /// * [num] maxCopper:
  ///   The maximum amount of copper in milligrams the recipe can have.
  ///
  /// * [num] minCalcium:
  ///   The minimum amount of calcium in milligrams the recipe must have.
  ///
  /// * [num] maxCalcium:
  ///   The maximum amount of calcium in milligrams the recipe can have.
  ///
  /// * [num] minCholine:
  ///   The minimum amount of choline in milligrams the recipe must have.
  ///
  /// * [num] maxCholine:
  ///   The maximum amount of choline in milligrams the recipe can have.
  ///
  /// * [num] minCholesterol:
  ///   The minimum amount of cholesterol in milligrams the recipe must have.
  ///
  /// * [num] maxCholesterol:
  ///   The maximum amount of cholesterol in milligrams the recipe can have.
  ///
  /// * [num] minFluoride:
  ///   The minimum amount of fluoride in milligrams the recipe must have.
  ///
  /// * [num] maxFluoride:
  ///   The maximum amount of fluoride in milligrams the recipe can have.
  ///
  /// * [num] minSaturatedFat:
  ///   The minimum amount of saturated fat in grams the recipe must have.
  ///
  /// * [num] maxSaturatedFat:
  ///   The maximum amount of saturated fat in grams the recipe can have.
  ///
  /// * [num] minVitaminA:
  ///   The minimum amount of Vitamin A in IU the recipe must have.
  ///
  /// * [num] maxVitaminA:
  ///   The maximum amount of Vitamin A in IU the recipe can have.
  ///
  /// * [num] minVitaminC:
  ///   The minimum amount of Vitamin C in milligrams the recipe must have.
  ///
  /// * [num] maxVitaminC:
  ///   The maximum amount of Vitamin C in milligrams the recipe can have.
  ///
  /// * [num] minVitaminD:
  ///   The minimum amount of Vitamin D in micrograms the recipe must have.
  ///
  /// * [num] maxVitaminD:
  ///   The maximum amount of Vitamin D in micrograms the recipe can have.
  ///
  /// * [num] minVitaminE:
  ///   The minimum amount of Vitamin E in milligrams the recipe must have.
  ///
  /// * [num] maxVitaminE:
  ///   The maximum amount of Vitamin E in milligrams the recipe can have.
  ///
  /// * [num] minVitaminK:
  ///   The minimum amount of Vitamin K in micrograms the recipe must have.
  ///
  /// * [num] maxVitaminK:
  ///   The maximum amount of Vitamin K in micrograms the recipe can have.
  ///
  /// * [num] minVitaminB1:
  ///   The minimum amount of Vitamin B1 in milligrams the recipe must have.
  ///
  /// * [num] maxVitaminB1:
  ///   The maximum amount of Vitamin B1 in milligrams the recipe can have.
  ///
  /// * [num] minVitaminB2:
  ///   The minimum amount of Vitamin B2 in milligrams the recipe must have.
  ///
  /// * [num] maxVitaminB2:
  ///   The maximum amount of Vitamin B2 in milligrams the recipe can have.
  ///
  /// * [num] minVitaminB5:
  ///   The minimum amount of Vitamin B5 in milligrams the recipe must have.
  ///
  /// * [num] maxVitaminB5:
  ///   The maximum amount of Vitamin B5 in milligrams the recipe can have.
  ///
  /// * [num] minVitaminB3:
  ///   The minimum amount of Vitamin B3 in milligrams the recipe must have.
  ///
  /// * [num] maxVitaminB3:
  ///   The maximum amount of Vitamin B3 in milligrams the recipe can have.
  ///
  /// * [num] minVitaminB6:
  ///   The minimum amount of Vitamin B6 in milligrams the recipe must have.
  ///
  /// * [num] maxVitaminB6:
  ///   The maximum amount of Vitamin B6 in milligrams the recipe can have.
  ///
  /// * [num] minVitaminB12:
  ///   The minimum amount of Vitamin B12 in micrograms the recipe must have.
  ///
  /// * [num] maxVitaminB12:
  ///   The maximum amount of Vitamin B12 in micrograms the recipe can have.
  ///
  /// * [num] minFiber:
  ///   The minimum amount of fiber in grams the recipe must have.
  ///
  /// * [num] maxFiber:
  ///   The maximum amount of fiber in grams the recipe can have.
  ///
  /// * [num] minFolate:
  ///   The minimum amount of folate in micrograms the recipe must have.
  ///
  /// * [num] maxFolate:
  ///   The maximum amount of folate in micrograms the recipe can have.
  ///
  /// * [num] minFolicAcid:
  ///   The minimum amount of folic acid in micrograms the recipe must have.
  ///
  /// * [num] maxFolicAcid:
  ///   The maximum amount of folic acid in micrograms the recipe can have.
  ///
  /// * [num] minIodine:
  ///   The minimum amount of iodine in micrograms the recipe must have.
  ///
  /// * [num] maxIodine:
  ///   The maximum amount of iodine in micrograms the recipe can have.
  ///
  /// * [num] minIron:
  ///   The minimum amount of iron in milligrams the recipe must have.
  ///
  /// * [num] maxIron:
  ///   The maximum amount of iron in milligrams the recipe can have.
  ///
  /// * [num] minMagnesium:
  ///   The minimum amount of magnesium in milligrams the recipe must have.
  ///
  /// * [num] maxMagnesium:
  ///   The maximum amount of magnesium in milligrams the recipe can have.
  ///
  /// * [num] minManganese:
  ///   The minimum amount of manganese in milligrams the recipe must have.
  ///
  /// * [num] maxManganese:
  ///   The maximum amount of manganese in milligrams the recipe can have.
  ///
  /// * [num] minPhosphorus:
  ///   The minimum amount of phosphorus in milligrams the recipe must have.
  ///
  /// * [num] maxPhosphorus:
  ///   The maximum amount of phosphorus in milligrams the recipe can have.
  ///
  /// * [num] minPotassium:
  ///   The minimum amount of potassium in milligrams the recipe must have.
  ///
  /// * [num] maxPotassium:
  ///   The maximum amount of potassium in milligrams the recipe can have.
  ///
  /// * [num] minSelenium:
  ///   The minimum amount of selenium in micrograms the recipe must have.
  ///
  /// * [num] maxSelenium:
  ///   The maximum amount of selenium in micrograms the recipe can have.
  ///
  /// * [num] minSodium:
  ///   The minimum amount of sodium in milligrams the recipe must have.
  ///
  /// * [num] maxSodium:
  ///   The maximum amount of sodium in milligrams the recipe can have.
  ///
  /// * [num] minSugar:
  ///   The minimum amount of sugar in grams the recipe must have.
  ///
  /// * [num] maxSugar:
  ///   The maximum amount of sugar in grams the recipe can have.
  ///
  /// * [num] minZinc:
  ///   The minimum amount of zinc in milligrams the recipe must have.
  ///
  /// * [num] maxZinc:
  ///   The maximum amount of zinc in milligrams the recipe can have.
  ///
  /// * [int] offset:
  ///   The number of results to skip (between 0 and 900).
  ///
  /// * [int] number:
  ///   The maximum number of items to return (between 1 and 100). Defaults to 10.
  ///
  /// * [bool] random:
  ///   If true, every request will give you a random set of recipes within the requested limits.
  Future<Response> searchRecipesByNutrientsWithHttpInfo({ num? minCarbs, num? maxCarbs, num? minProtein, num? maxProtein, num? minCalories, num? maxCalories, num? minFat, num? maxFat, num? minAlcohol, num? maxAlcohol, num? minCaffeine, num? maxCaffeine, num? minCopper, num? maxCopper, num? minCalcium, num? maxCalcium, num? minCholine, num? maxCholine, num? minCholesterol, num? maxCholesterol, num? minFluoride, num? maxFluoride, num? minSaturatedFat, num? maxSaturatedFat, num? minVitaminA, num? maxVitaminA, num? minVitaminC, num? maxVitaminC, num? minVitaminD, num? maxVitaminD, num? minVitaminE, num? maxVitaminE, num? minVitaminK, num? maxVitaminK, num? minVitaminB1, num? maxVitaminB1, num? minVitaminB2, num? maxVitaminB2, num? minVitaminB5, num? maxVitaminB5, num? minVitaminB3, num? maxVitaminB3, num? minVitaminB6, num? maxVitaminB6, num? minVitaminB12, num? maxVitaminB12, num? minFiber, num? maxFiber, num? minFolate, num? maxFolate, num? minFolicAcid, num? maxFolicAcid, num? minIodine, num? maxIodine, num? minIron, num? maxIron, num? minMagnesium, num? maxMagnesium, num? minManganese, num? maxManganese, num? minPhosphorus, num? maxPhosphorus, num? minPotassium, num? maxPotassium, num? minSelenium, num? maxSelenium, num? minSodium, num? maxSodium, num? minSugar, num? maxSugar, num? minZinc, num? maxZinc, int? offset, int? number, bool? random, }) async {
    // ignore: prefer_const_declarations
    final path = r'/recipes/findByNutrients';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (minCarbs != null) {
      queryParams.addAll(_queryParams('', 'minCarbs', minCarbs));
    }
    if (maxCarbs != null) {
      queryParams.addAll(_queryParams('', 'maxCarbs', maxCarbs));
    }
    if (minProtein != null) {
      queryParams.addAll(_queryParams('', 'minProtein', minProtein));
    }
    if (maxProtein != null) {
      queryParams.addAll(_queryParams('', 'maxProtein', maxProtein));
    }
    if (minCalories != null) {
      queryParams.addAll(_queryParams('', 'minCalories', minCalories));
    }
    if (maxCalories != null) {
      queryParams.addAll(_queryParams('', 'maxCalories', maxCalories));
    }
    if (minFat != null) {
      queryParams.addAll(_queryParams('', 'minFat', minFat));
    }
    if (maxFat != null) {
      queryParams.addAll(_queryParams('', 'maxFat', maxFat));
    }
    if (minAlcohol != null) {
      queryParams.addAll(_queryParams('', 'minAlcohol', minAlcohol));
    }
    if (maxAlcohol != null) {
      queryParams.addAll(_queryParams('', 'maxAlcohol', maxAlcohol));
    }
    if (minCaffeine != null) {
      queryParams.addAll(_queryParams('', 'minCaffeine', minCaffeine));
    }
    if (maxCaffeine != null) {
      queryParams.addAll(_queryParams('', 'maxCaffeine', maxCaffeine));
    }
    if (minCopper != null) {
      queryParams.addAll(_queryParams('', 'minCopper', minCopper));
    }
    if (maxCopper != null) {
      queryParams.addAll(_queryParams('', 'maxCopper', maxCopper));
    }
    if (minCalcium != null) {
      queryParams.addAll(_queryParams('', 'minCalcium', minCalcium));
    }
    if (maxCalcium != null) {
      queryParams.addAll(_queryParams('', 'maxCalcium', maxCalcium));
    }
    if (minCholine != null) {
      queryParams.addAll(_queryParams('', 'minCholine', minCholine));
    }
    if (maxCholine != null) {
      queryParams.addAll(_queryParams('', 'maxCholine', maxCholine));
    }
    if (minCholesterol != null) {
      queryParams.addAll(_queryParams('', 'minCholesterol', minCholesterol));
    }
    if (maxCholesterol != null) {
      queryParams.addAll(_queryParams('', 'maxCholesterol', maxCholesterol));
    }
    if (minFluoride != null) {
      queryParams.addAll(_queryParams('', 'minFluoride', minFluoride));
    }
    if (maxFluoride != null) {
      queryParams.addAll(_queryParams('', 'maxFluoride', maxFluoride));
    }
    if (minSaturatedFat != null) {
      queryParams.addAll(_queryParams('', 'minSaturatedFat', minSaturatedFat));
    }
    if (maxSaturatedFat != null) {
      queryParams.addAll(_queryParams('', 'maxSaturatedFat', maxSaturatedFat));
    }
    if (minVitaminA != null) {
      queryParams.addAll(_queryParams('', 'minVitaminA', minVitaminA));
    }
    if (maxVitaminA != null) {
      queryParams.addAll(_queryParams('', 'maxVitaminA', maxVitaminA));
    }
    if (minVitaminC != null) {
      queryParams.addAll(_queryParams('', 'minVitaminC', minVitaminC));
    }
    if (maxVitaminC != null) {
      queryParams.addAll(_queryParams('', 'maxVitaminC', maxVitaminC));
    }
    if (minVitaminD != null) {
      queryParams.addAll(_queryParams('', 'minVitaminD', minVitaminD));
    }
    if (maxVitaminD != null) {
      queryParams.addAll(_queryParams('', 'maxVitaminD', maxVitaminD));
    }
    if (minVitaminE != null) {
      queryParams.addAll(_queryParams('', 'minVitaminE', minVitaminE));
    }
    if (maxVitaminE != null) {
      queryParams.addAll(_queryParams('', 'maxVitaminE', maxVitaminE));
    }
    if (minVitaminK != null) {
      queryParams.addAll(_queryParams('', 'minVitaminK', minVitaminK));
    }
    if (maxVitaminK != null) {
      queryParams.addAll(_queryParams('', 'maxVitaminK', maxVitaminK));
    }
    if (minVitaminB1 != null) {
      queryParams.addAll(_queryParams('', 'minVitaminB1', minVitaminB1));
    }
    if (maxVitaminB1 != null) {
      queryParams.addAll(_queryParams('', 'maxVitaminB1', maxVitaminB1));
    }
    if (minVitaminB2 != null) {
      queryParams.addAll(_queryParams('', 'minVitaminB2', minVitaminB2));
    }
    if (maxVitaminB2 != null) {
      queryParams.addAll(_queryParams('', 'maxVitaminB2', maxVitaminB2));
    }
    if (minVitaminB5 != null) {
      queryParams.addAll(_queryParams('', 'minVitaminB5', minVitaminB5));
    }
    if (maxVitaminB5 != null) {
      queryParams.addAll(_queryParams('', 'maxVitaminB5', maxVitaminB5));
    }
    if (minVitaminB3 != null) {
      queryParams.addAll(_queryParams('', 'minVitaminB3', minVitaminB3));
    }
    if (maxVitaminB3 != null) {
      queryParams.addAll(_queryParams('', 'maxVitaminB3', maxVitaminB3));
    }
    if (minVitaminB6 != null) {
      queryParams.addAll(_queryParams('', 'minVitaminB6', minVitaminB6));
    }
    if (maxVitaminB6 != null) {
      queryParams.addAll(_queryParams('', 'maxVitaminB6', maxVitaminB6));
    }
    if (minVitaminB12 != null) {
      queryParams.addAll(_queryParams('', 'minVitaminB12', minVitaminB12));
    }
    if (maxVitaminB12 != null) {
      queryParams.addAll(_queryParams('', 'maxVitaminB12', maxVitaminB12));
    }
    if (minFiber != null) {
      queryParams.addAll(_queryParams('', 'minFiber', minFiber));
    }
    if (maxFiber != null) {
      queryParams.addAll(_queryParams('', 'maxFiber', maxFiber));
    }
    if (minFolate != null) {
      queryParams.addAll(_queryParams('', 'minFolate', minFolate));
    }
    if (maxFolate != null) {
      queryParams.addAll(_queryParams('', 'maxFolate', maxFolate));
    }
    if (minFolicAcid != null) {
      queryParams.addAll(_queryParams('', 'minFolicAcid', minFolicAcid));
    }
    if (maxFolicAcid != null) {
      queryParams.addAll(_queryParams('', 'maxFolicAcid', maxFolicAcid));
    }
    if (minIodine != null) {
      queryParams.addAll(_queryParams('', 'minIodine', minIodine));
    }
    if (maxIodine != null) {
      queryParams.addAll(_queryParams('', 'maxIodine', maxIodine));
    }
    if (minIron != null) {
      queryParams.addAll(_queryParams('', 'minIron', minIron));
    }
    if (maxIron != null) {
      queryParams.addAll(_queryParams('', 'maxIron', maxIron));
    }
    if (minMagnesium != null) {
      queryParams.addAll(_queryParams('', 'minMagnesium', minMagnesium));
    }
    if (maxMagnesium != null) {
      queryParams.addAll(_queryParams('', 'maxMagnesium', maxMagnesium));
    }
    if (minManganese != null) {
      queryParams.addAll(_queryParams('', 'minManganese', minManganese));
    }
    if (maxManganese != null) {
      queryParams.addAll(_queryParams('', 'maxManganese', maxManganese));
    }
    if (minPhosphorus != null) {
      queryParams.addAll(_queryParams('', 'minPhosphorus', minPhosphorus));
    }
    if (maxPhosphorus != null) {
      queryParams.addAll(_queryParams('', 'maxPhosphorus', maxPhosphorus));
    }
    if (minPotassium != null) {
      queryParams.addAll(_queryParams('', 'minPotassium', minPotassium));
    }
    if (maxPotassium != null) {
      queryParams.addAll(_queryParams('', 'maxPotassium', maxPotassium));
    }
    if (minSelenium != null) {
      queryParams.addAll(_queryParams('', 'minSelenium', minSelenium));
    }
    if (maxSelenium != null) {
      queryParams.addAll(_queryParams('', 'maxSelenium', maxSelenium));
    }
    if (minSodium != null) {
      queryParams.addAll(_queryParams('', 'minSodium', minSodium));
    }
    if (maxSodium != null) {
      queryParams.addAll(_queryParams('', 'maxSodium', maxSodium));
    }
    if (minSugar != null) {
      queryParams.addAll(_queryParams('', 'minSugar', minSugar));
    }
    if (maxSugar != null) {
      queryParams.addAll(_queryParams('', 'maxSugar', maxSugar));
    }
    if (minZinc != null) {
      queryParams.addAll(_queryParams('', 'minZinc', minZinc));
    }
    if (maxZinc != null) {
      queryParams.addAll(_queryParams('', 'maxZinc', maxZinc));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }
    if (number != null) {
      queryParams.addAll(_queryParams('', 'number', number));
    }
    if (random != null) {
      queryParams.addAll(_queryParams('', 'random', random));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Search Recipes by Nutrients
  ///
  /// Find a set of recipes that adhere to the given nutritional limits. You may set limits for macronutrients (calories, protein, fat, and carbohydrate) and/or many micronutrients.
  ///
  /// Parameters:
  ///
  /// * [num] minCarbs:
  ///   The minimum amount of carbohydrates in grams the recipe must have.
  ///
  /// * [num] maxCarbs:
  ///   The maximum amount of carbohydrates in grams the recipe can have.
  ///
  /// * [num] minProtein:
  ///   The minimum amount of protein in grams the recipe must have.
  ///
  /// * [num] maxProtein:
  ///   The maximum amount of protein in grams the recipe can have.
  ///
  /// * [num] minCalories:
  ///   The minimum amount of calories the recipe must have.
  ///
  /// * [num] maxCalories:
  ///   The maximum amount of calories the recipe can have.
  ///
  /// * [num] minFat:
  ///   The minimum amount of fat in grams the recipe must have.
  ///
  /// * [num] maxFat:
  ///   The maximum amount of fat in grams the recipe can have.
  ///
  /// * [num] minAlcohol:
  ///   The minimum amount of alcohol in grams the recipe must have.
  ///
  /// * [num] maxAlcohol:
  ///   The maximum amount of alcohol in grams the recipe can have.
  ///
  /// * [num] minCaffeine:
  ///   The minimum amount of caffeine in milligrams the recipe must have.
  ///
  /// * [num] maxCaffeine:
  ///   The maximum amount of caffeine in milligrams the recipe can have.
  ///
  /// * [num] minCopper:
  ///   The minimum amount of copper in milligrams the recipe must have.
  ///
  /// * [num] maxCopper:
  ///   The maximum amount of copper in milligrams the recipe can have.
  ///
  /// * [num] minCalcium:
  ///   The minimum amount of calcium in milligrams the recipe must have.
  ///
  /// * [num] maxCalcium:
  ///   The maximum amount of calcium in milligrams the recipe can have.
  ///
  /// * [num] minCholine:
  ///   The minimum amount of choline in milligrams the recipe must have.
  ///
  /// * [num] maxCholine:
  ///   The maximum amount of choline in milligrams the recipe can have.
  ///
  /// * [num] minCholesterol:
  ///   The minimum amount of cholesterol in milligrams the recipe must have.
  ///
  /// * [num] maxCholesterol:
  ///   The maximum amount of cholesterol in milligrams the recipe can have.
  ///
  /// * [num] minFluoride:
  ///   The minimum amount of fluoride in milligrams the recipe must have.
  ///
  /// * [num] maxFluoride:
  ///   The maximum amount of fluoride in milligrams the recipe can have.
  ///
  /// * [num] minSaturatedFat:
  ///   The minimum amount of saturated fat in grams the recipe must have.
  ///
  /// * [num] maxSaturatedFat:
  ///   The maximum amount of saturated fat in grams the recipe can have.
  ///
  /// * [num] minVitaminA:
  ///   The minimum amount of Vitamin A in IU the recipe must have.
  ///
  /// * [num] maxVitaminA:
  ///   The maximum amount of Vitamin A in IU the recipe can have.
  ///
  /// * [num] minVitaminC:
  ///   The minimum amount of Vitamin C in milligrams the recipe must have.
  ///
  /// * [num] maxVitaminC:
  ///   The maximum amount of Vitamin C in milligrams the recipe can have.
  ///
  /// * [num] minVitaminD:
  ///   The minimum amount of Vitamin D in micrograms the recipe must have.
  ///
  /// * [num] maxVitaminD:
  ///   The maximum amount of Vitamin D in micrograms the recipe can have.
  ///
  /// * [num] minVitaminE:
  ///   The minimum amount of Vitamin E in milligrams the recipe must have.
  ///
  /// * [num] maxVitaminE:
  ///   The maximum amount of Vitamin E in milligrams the recipe can have.
  ///
  /// * [num] minVitaminK:
  ///   The minimum amount of Vitamin K in micrograms the recipe must have.
  ///
  /// * [num] maxVitaminK:
  ///   The maximum amount of Vitamin K in micrograms the recipe can have.
  ///
  /// * [num] minVitaminB1:
  ///   The minimum amount of Vitamin B1 in milligrams the recipe must have.
  ///
  /// * [num] maxVitaminB1:
  ///   The maximum amount of Vitamin B1 in milligrams the recipe can have.
  ///
  /// * [num] minVitaminB2:
  ///   The minimum amount of Vitamin B2 in milligrams the recipe must have.
  ///
  /// * [num] maxVitaminB2:
  ///   The maximum amount of Vitamin B2 in milligrams the recipe can have.
  ///
  /// * [num] minVitaminB5:
  ///   The minimum amount of Vitamin B5 in milligrams the recipe must have.
  ///
  /// * [num] maxVitaminB5:
  ///   The maximum amount of Vitamin B5 in milligrams the recipe can have.
  ///
  /// * [num] minVitaminB3:
  ///   The minimum amount of Vitamin B3 in milligrams the recipe must have.
  ///
  /// * [num] maxVitaminB3:
  ///   The maximum amount of Vitamin B3 in milligrams the recipe can have.
  ///
  /// * [num] minVitaminB6:
  ///   The minimum amount of Vitamin B6 in milligrams the recipe must have.
  ///
  /// * [num] maxVitaminB6:
  ///   The maximum amount of Vitamin B6 in milligrams the recipe can have.
  ///
  /// * [num] minVitaminB12:
  ///   The minimum amount of Vitamin B12 in micrograms the recipe must have.
  ///
  /// * [num] maxVitaminB12:
  ///   The maximum amount of Vitamin B12 in micrograms the recipe can have.
  ///
  /// * [num] minFiber:
  ///   The minimum amount of fiber in grams the recipe must have.
  ///
  /// * [num] maxFiber:
  ///   The maximum amount of fiber in grams the recipe can have.
  ///
  /// * [num] minFolate:
  ///   The minimum amount of folate in micrograms the recipe must have.
  ///
  /// * [num] maxFolate:
  ///   The maximum amount of folate in micrograms the recipe can have.
  ///
  /// * [num] minFolicAcid:
  ///   The minimum amount of folic acid in micrograms the recipe must have.
  ///
  /// * [num] maxFolicAcid:
  ///   The maximum amount of folic acid in micrograms the recipe can have.
  ///
  /// * [num] minIodine:
  ///   The minimum amount of iodine in micrograms the recipe must have.
  ///
  /// * [num] maxIodine:
  ///   The maximum amount of iodine in micrograms the recipe can have.
  ///
  /// * [num] minIron:
  ///   The minimum amount of iron in milligrams the recipe must have.
  ///
  /// * [num] maxIron:
  ///   The maximum amount of iron in milligrams the recipe can have.
  ///
  /// * [num] minMagnesium:
  ///   The minimum amount of magnesium in milligrams the recipe must have.
  ///
  /// * [num] maxMagnesium:
  ///   The maximum amount of magnesium in milligrams the recipe can have.
  ///
  /// * [num] minManganese:
  ///   The minimum amount of manganese in milligrams the recipe must have.
  ///
  /// * [num] maxManganese:
  ///   The maximum amount of manganese in milligrams the recipe can have.
  ///
  /// * [num] minPhosphorus:
  ///   The minimum amount of phosphorus in milligrams the recipe must have.
  ///
  /// * [num] maxPhosphorus:
  ///   The maximum amount of phosphorus in milligrams the recipe can have.
  ///
  /// * [num] minPotassium:
  ///   The minimum amount of potassium in milligrams the recipe must have.
  ///
  /// * [num] maxPotassium:
  ///   The maximum amount of potassium in milligrams the recipe can have.
  ///
  /// * [num] minSelenium:
  ///   The minimum amount of selenium in micrograms the recipe must have.
  ///
  /// * [num] maxSelenium:
  ///   The maximum amount of selenium in micrograms the recipe can have.
  ///
  /// * [num] minSodium:
  ///   The minimum amount of sodium in milligrams the recipe must have.
  ///
  /// * [num] maxSodium:
  ///   The maximum amount of sodium in milligrams the recipe can have.
  ///
  /// * [num] minSugar:
  ///   The minimum amount of sugar in grams the recipe must have.
  ///
  /// * [num] maxSugar:
  ///   The maximum amount of sugar in grams the recipe can have.
  ///
  /// * [num] minZinc:
  ///   The minimum amount of zinc in milligrams the recipe must have.
  ///
  /// * [num] maxZinc:
  ///   The maximum amount of zinc in milligrams the recipe can have.
  ///
  /// * [int] offset:
  ///   The number of results to skip (between 0 and 900).
  ///
  /// * [int] number:
  ///   The maximum number of items to return (between 1 and 100). Defaults to 10.
  ///
  /// * [bool] random:
  ///   If true, every request will give you a random set of recipes within the requested limits.
  Future<Set<SearchRecipesByNutrients200ResponseInner>?> searchRecipesByNutrients({ num? minCarbs, num? maxCarbs, num? minProtein, num? maxProtein, num? minCalories, num? maxCalories, num? minFat, num? maxFat, num? minAlcohol, num? maxAlcohol, num? minCaffeine, num? maxCaffeine, num? minCopper, num? maxCopper, num? minCalcium, num? maxCalcium, num? minCholine, num? maxCholine, num? minCholesterol, num? maxCholesterol, num? minFluoride, num? maxFluoride, num? minSaturatedFat, num? maxSaturatedFat, num? minVitaminA, num? maxVitaminA, num? minVitaminC, num? maxVitaminC, num? minVitaminD, num? maxVitaminD, num? minVitaminE, num? maxVitaminE, num? minVitaminK, num? maxVitaminK, num? minVitaminB1, num? maxVitaminB1, num? minVitaminB2, num? maxVitaminB2, num? minVitaminB5, num? maxVitaminB5, num? minVitaminB3, num? maxVitaminB3, num? minVitaminB6, num? maxVitaminB6, num? minVitaminB12, num? maxVitaminB12, num? minFiber, num? maxFiber, num? minFolate, num? maxFolate, num? minFolicAcid, num? maxFolicAcid, num? minIodine, num? maxIodine, num? minIron, num? maxIron, num? minMagnesium, num? maxMagnesium, num? minManganese, num? maxManganese, num? minPhosphorus, num? maxPhosphorus, num? minPotassium, num? maxPotassium, num? minSelenium, num? maxSelenium, num? minSodium, num? maxSodium, num? minSugar, num? maxSugar, num? minZinc, num? maxZinc, int? offset, int? number, bool? random, }) async {
    final response = await searchRecipesByNutrientsWithHttpInfo( minCarbs: minCarbs, maxCarbs: maxCarbs, minProtein: minProtein, maxProtein: maxProtein, minCalories: minCalories, maxCalories: maxCalories, minFat: minFat, maxFat: maxFat, minAlcohol: minAlcohol, maxAlcohol: maxAlcohol, minCaffeine: minCaffeine, maxCaffeine: maxCaffeine, minCopper: minCopper, maxCopper: maxCopper, minCalcium: minCalcium, maxCalcium: maxCalcium, minCholine: minCholine, maxCholine: maxCholine, minCholesterol: minCholesterol, maxCholesterol: maxCholesterol, minFluoride: minFluoride, maxFluoride: maxFluoride, minSaturatedFat: minSaturatedFat, maxSaturatedFat: maxSaturatedFat, minVitaminA: minVitaminA, maxVitaminA: maxVitaminA, minVitaminC: minVitaminC, maxVitaminC: maxVitaminC, minVitaminD: minVitaminD, maxVitaminD: maxVitaminD, minVitaminE: minVitaminE, maxVitaminE: maxVitaminE, minVitaminK: minVitaminK, maxVitaminK: maxVitaminK, minVitaminB1: minVitaminB1, maxVitaminB1: maxVitaminB1, minVitaminB2: minVitaminB2, maxVitaminB2: maxVitaminB2, minVitaminB5: minVitaminB5, maxVitaminB5: maxVitaminB5, minVitaminB3: minVitaminB3, maxVitaminB3: maxVitaminB3, minVitaminB6: minVitaminB6, maxVitaminB6: maxVitaminB6, minVitaminB12: minVitaminB12, maxVitaminB12: maxVitaminB12, minFiber: minFiber, maxFiber: maxFiber, minFolate: minFolate, maxFolate: maxFolate, minFolicAcid: minFolicAcid, maxFolicAcid: maxFolicAcid, minIodine: minIodine, maxIodine: maxIodine, minIron: minIron, maxIron: maxIron, minMagnesium: minMagnesium, maxMagnesium: maxMagnesium, minManganese: minManganese, maxManganese: maxManganese, minPhosphorus: minPhosphorus, maxPhosphorus: maxPhosphorus, minPotassium: minPotassium, maxPotassium: maxPotassium, minSelenium: minSelenium, maxSelenium: maxSelenium, minSodium: minSodium, maxSodium: maxSodium, minSugar: minSugar, maxSugar: maxSugar, minZinc: minZinc, maxZinc: maxZinc, offset: offset, number: number, random: random, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'Set<SearchRecipesByNutrients200ResponseInner>') as List)
        .cast<SearchRecipesByNutrients200ResponseInner>()
        .toSet();

    }
    return null;
  }

  /// Summarize Recipe
  ///
  /// Automatically generate a short description that summarizes key information about the recipe.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The recipe id.
  Future<Response> summarizeRecipeWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/recipes/{id}/summary'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Summarize Recipe
  ///
  /// Automatically generate a short description that summarizes key information about the recipe.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The recipe id.
  Future<SummarizeRecipe200Response?> summarizeRecipe(int id,) async {
    final response = await summarizeRecipeWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SummarizeRecipe200Response',) as SummarizeRecipe200Response;
    
    }
    return null;
  }

  /// Equipment Widget
  ///
  /// Visualize the equipment used to make a recipe.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] instructions (required):
  ///   The recipe's instructions.
  ///
  /// * [String] view:
  ///   How to visualize the ingredients, either 'grid' or 'list'.
  ///
  /// * [bool] defaultCss:
  ///   Whether the default CSS should be added to the response.
  ///
  /// * [bool] showBacklink:
  ///   Whether to show a backlink to spoonacular. If set false, this call counts against your quota.
  Future<Response> visualizeEquipmentWithHttpInfo(String instructions, { String? view, bool? defaultCss, bool? showBacklink, }) async {
    // ignore: prefer_const_declarations
    final path = r'/recipes/visualizeEquipment';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/x-www-form-urlencoded'];

    if (instructions != null) {
      formParams[r'instructions'] = parameterToString(instructions);
    }
    if (view != null) {
      formParams[r'view'] = parameterToString(view);
    }
    if (defaultCss != null) {
      formParams[r'defaultCss'] = parameterToString(defaultCss);
    }
    if (showBacklink != null) {
      formParams[r'showBacklink'] = parameterToString(showBacklink);
    }

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Equipment Widget
  ///
  /// Visualize the equipment used to make a recipe.
  ///
  /// Parameters:
  ///
  /// * [String] instructions (required):
  ///   The recipe's instructions.
  ///
  /// * [String] view:
  ///   How to visualize the ingredients, either 'grid' or 'list'.
  ///
  /// * [bool] defaultCss:
  ///   Whether the default CSS should be added to the response.
  ///
  /// * [bool] showBacklink:
  ///   Whether to show a backlink to spoonacular. If set false, this call counts against your quota.
  Future<String?> visualizeEquipment(String instructions, { String? view, bool? defaultCss, bool? showBacklink, }) async {
    final response = await visualizeEquipmentWithHttpInfo(instructions,  view: view, defaultCss: defaultCss, showBacklink: showBacklink, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
    
    }
    return null;
  }

  /// Price Breakdown Widget
  ///
  /// Visualize the price breakdown of a recipe.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ingredientList (required):
  ///   The ingredient list of the recipe, one ingredient per line.
  ///
  /// * [num] servings (required):
  ///   The number of servings.
  ///
  /// * [String] language:
  ///   The language of the input. Either 'en' or 'de'.
  ///
  /// * [num] mode:
  ///   The mode in which the widget should be delivered. 1 = separate views (compact), 2 = all in one view (full).
  ///
  /// * [bool] defaultCss:
  ///   Whether the default CSS should be added to the response.
  ///
  /// * [bool] showBacklink:
  ///   Whether to show a backlink to spoonacular. If set false, this call counts against your quota.
  Future<Response> visualizePriceBreakdownWithHttpInfo(String ingredientList, num servings, { String? language, num? mode, bool? defaultCss, bool? showBacklink, }) async {
    // ignore: prefer_const_declarations
    final path = r'/recipes/visualizePriceEstimator';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (language != null) {
      queryParams.addAll(_queryParams('', 'language', language));
    }

    const contentTypes = <String>['application/x-www-form-urlencoded'];

    if (ingredientList != null) {
      formParams[r'ingredientList'] = parameterToString(ingredientList);
    }
    if (servings != null) {
      formParams[r'servings'] = parameterToString(servings);
    }
    if (mode != null) {
      formParams[r'mode'] = parameterToString(mode);
    }
    if (defaultCss != null) {
      formParams[r'defaultCss'] = parameterToString(defaultCss);
    }
    if (showBacklink != null) {
      formParams[r'showBacklink'] = parameterToString(showBacklink);
    }

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Price Breakdown Widget
  ///
  /// Visualize the price breakdown of a recipe.
  ///
  /// Parameters:
  ///
  /// * [String] ingredientList (required):
  ///   The ingredient list of the recipe, one ingredient per line.
  ///
  /// * [num] servings (required):
  ///   The number of servings.
  ///
  /// * [String] language:
  ///   The language of the input. Either 'en' or 'de'.
  ///
  /// * [num] mode:
  ///   The mode in which the widget should be delivered. 1 = separate views (compact), 2 = all in one view (full).
  ///
  /// * [bool] defaultCss:
  ///   Whether the default CSS should be added to the response.
  ///
  /// * [bool] showBacklink:
  ///   Whether to show a backlink to spoonacular. If set false, this call counts against your quota.
  Future<String?> visualizePriceBreakdown(String ingredientList, num servings, { String? language, num? mode, bool? defaultCss, bool? showBacklink, }) async {
    final response = await visualizePriceBreakdownWithHttpInfo(ingredientList, servings,  language: language, mode: mode, defaultCss: defaultCss, showBacklink: showBacklink, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
    
    }
    return null;
  }

  /// Equipment by ID Widget
  ///
  /// Visualize a recipe's equipment list.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The recipe id.
  ///
  /// * [bool] defaultCss:
  ///   Whether the default CSS should be added to the response.
  Future<Response> visualizeRecipeEquipmentByIDWithHttpInfo(int id, { bool? defaultCss, }) async {
    // ignore: prefer_const_declarations
    final path = r'/recipes/{id}/equipmentWidget'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (defaultCss != null) {
      queryParams.addAll(_queryParams('', 'defaultCss', defaultCss));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Equipment by ID Widget
  ///
  /// Visualize a recipe's equipment list.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The recipe id.
  ///
  /// * [bool] defaultCss:
  ///   Whether the default CSS should be added to the response.
  Future<String?> visualizeRecipeEquipmentByID(int id, { bool? defaultCss, }) async {
    final response = await visualizeRecipeEquipmentByIDWithHttpInfo(id,  defaultCss: defaultCss, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
    
    }
    return null;
  }

  /// Ingredients by ID Widget
  ///
  /// Visualize a recipe's ingredient list.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The recipe id.
  ///
  /// * [bool] defaultCss:
  ///   Whether the default CSS should be added to the response.
  ///
  /// * [String] measure:
  ///   Whether the the measures should be 'us' or 'metric'.
  Future<Response> visualizeRecipeIngredientsByIDWithHttpInfo(int id, { bool? defaultCss, String? measure, }) async {
    // ignore: prefer_const_declarations
    final path = r'/recipes/{id}/ingredientWidget'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (defaultCss != null) {
      queryParams.addAll(_queryParams('', 'defaultCss', defaultCss));
    }
    if (measure != null) {
      queryParams.addAll(_queryParams('', 'measure', measure));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Ingredients by ID Widget
  ///
  /// Visualize a recipe's ingredient list.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The recipe id.
  ///
  /// * [bool] defaultCss:
  ///   Whether the default CSS should be added to the response.
  ///
  /// * [String] measure:
  ///   Whether the the measures should be 'us' or 'metric'.
  Future<String?> visualizeRecipeIngredientsByID(int id, { bool? defaultCss, String? measure, }) async {
    final response = await visualizeRecipeIngredientsByIDWithHttpInfo(id,  defaultCss: defaultCss, measure: measure, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
    
    }
    return null;
  }

  /// Recipe Nutrition Widget
  ///
  /// Visualize a recipe's nutritional information as HTML including CSS.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ingredientList (required):
  ///   The ingredient list of the recipe, one ingredient per line.
  ///
  /// * [num] servings (required):
  ///   The number of servings.
  ///
  /// * [String] language:
  ///   The language of the input. Either 'en' or 'de'.
  ///
  /// * [bool] defaultCss:
  ///   Whether the default CSS should be added to the response.
  ///
  /// * [bool] showBacklink:
  ///   Whether to show a backlink to spoonacular. If set false, this call counts against your quota.
  Future<Response> visualizeRecipeNutritionWithHttpInfo(String ingredientList, num servings, { String? language, bool? defaultCss, bool? showBacklink, }) async {
    // ignore: prefer_const_declarations
    final path = r'/recipes/visualizeNutrition';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (language != null) {
      queryParams.addAll(_queryParams('', 'language', language));
    }

    const contentTypes = <String>['application/x-www-form-urlencoded'];

    if (ingredientList != null) {
      formParams[r'ingredientList'] = parameterToString(ingredientList);
    }
    if (servings != null) {
      formParams[r'servings'] = parameterToString(servings);
    }
    if (defaultCss != null) {
      formParams[r'defaultCss'] = parameterToString(defaultCss);
    }
    if (showBacklink != null) {
      formParams[r'showBacklink'] = parameterToString(showBacklink);
    }

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Recipe Nutrition Widget
  ///
  /// Visualize a recipe's nutritional information as HTML including CSS.
  ///
  /// Parameters:
  ///
  /// * [String] ingredientList (required):
  ///   The ingredient list of the recipe, one ingredient per line.
  ///
  /// * [num] servings (required):
  ///   The number of servings.
  ///
  /// * [String] language:
  ///   The language of the input. Either 'en' or 'de'.
  ///
  /// * [bool] defaultCss:
  ///   Whether the default CSS should be added to the response.
  ///
  /// * [bool] showBacklink:
  ///   Whether to show a backlink to spoonacular. If set false, this call counts against your quota.
  Future<String?> visualizeRecipeNutrition(String ingredientList, num servings, { String? language, bool? defaultCss, bool? showBacklink, }) async {
    final response = await visualizeRecipeNutritionWithHttpInfo(ingredientList, servings,  language: language, defaultCss: defaultCss, showBacklink: showBacklink, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
    
    }
    return null;
  }

  /// Recipe Nutrition by ID Widget
  ///
  /// Visualize a recipe's nutritional information as HTML including CSS.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The recipe id.
  ///
  /// * [bool] defaultCss:
  ///   Whether the default CSS should be added to the response.
  Future<Response> visualizeRecipeNutritionByIDWithHttpInfo(int id, { bool? defaultCss, }) async {
    // ignore: prefer_const_declarations
    final path = r'/recipes/{id}/nutritionWidget'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (defaultCss != null) {
      queryParams.addAll(_queryParams('', 'defaultCss', defaultCss));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Recipe Nutrition by ID Widget
  ///
  /// Visualize a recipe's nutritional information as HTML including CSS.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The recipe id.
  ///
  /// * [bool] defaultCss:
  ///   Whether the default CSS should be added to the response.
  Future<String?> visualizeRecipeNutritionByID(int id, { bool? defaultCss, }) async {
    final response = await visualizeRecipeNutritionByIDWithHttpInfo(id,  defaultCss: defaultCss, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
    
    }
    return null;
  }

  /// Price Breakdown by ID Widget
  ///
  /// Visualize a recipe's price breakdown.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The recipe id.
  ///
  /// * [bool] defaultCss:
  ///   Whether the default CSS should be added to the response.
  Future<Response> visualizeRecipePriceBreakdownByIDWithHttpInfo(int id, { bool? defaultCss, }) async {
    // ignore: prefer_const_declarations
    final path = r'/recipes/{id}/priceBreakdownWidget'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (defaultCss != null) {
      queryParams.addAll(_queryParams('', 'defaultCss', defaultCss));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Price Breakdown by ID Widget
  ///
  /// Visualize a recipe's price breakdown.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The recipe id.
  ///
  /// * [bool] defaultCss:
  ///   Whether the default CSS should be added to the response.
  Future<String?> visualizeRecipePriceBreakdownByID(int id, { bool? defaultCss, }) async {
    final response = await visualizeRecipePriceBreakdownByIDWithHttpInfo(id,  defaultCss: defaultCss, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
    
    }
    return null;
  }

  /// Recipe Taste Widget
  ///
  /// Visualize a recipe's taste information as HTML including CSS. You can play around with that endpoint!
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ingredientList (required):
  ///   The ingredient list of the recipe, one ingredient per line.
  ///
  /// * [String] language:
  ///   The language of the input. Either 'en' or 'de'.
  ///
  /// * [bool] normalize:
  ///   Normalize to the strongest taste.
  ///
  /// * [String] rgb:
  ///   Red, green, blue values for the chart color.
  Future<Response> visualizeRecipeTasteWithHttpInfo(String ingredientList, { String? language, bool? normalize, String? rgb, }) async {
    // ignore: prefer_const_declarations
    final path = r'/recipes/visualizeTaste';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (language != null) {
      queryParams.addAll(_queryParams('', 'language', language));
    }

    const contentTypes = <String>['application/x-www-form-urlencoded'];

    if (ingredientList != null) {
      formParams[r'ingredientList'] = parameterToString(ingredientList);
    }
    if (normalize != null) {
      formParams[r'normalize'] = parameterToString(normalize);
    }
    if (rgb != null) {
      formParams[r'rgb'] = parameterToString(rgb);
    }

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Recipe Taste Widget
  ///
  /// Visualize a recipe's taste information as HTML including CSS. You can play around with that endpoint!
  ///
  /// Parameters:
  ///
  /// * [String] ingredientList (required):
  ///   The ingredient list of the recipe, one ingredient per line.
  ///
  /// * [String] language:
  ///   The language of the input. Either 'en' or 'de'.
  ///
  /// * [bool] normalize:
  ///   Normalize to the strongest taste.
  ///
  /// * [String] rgb:
  ///   Red, green, blue values for the chart color.
  Future<String?> visualizeRecipeTaste(String ingredientList, { String? language, bool? normalize, String? rgb, }) async {
    final response = await visualizeRecipeTasteWithHttpInfo(ingredientList,  language: language, normalize: normalize, rgb: rgb, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
    
    }
    return null;
  }

  /// Recipe Taste by ID Widget
  ///
  /// Get a recipe's taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The recipe id.
  ///
  /// * [bool] normalize:
  ///   Whether to normalize to the strongest taste.
  ///
  /// * [String] rgb:
  ///   Red, green, blue values for the chart color.
  Future<Response> visualizeRecipeTasteByIDWithHttpInfo(int id, { bool? normalize, String? rgb, }) async {
    // ignore: prefer_const_declarations
    final path = r'/recipes/{id}/tasteWidget'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (normalize != null) {
      queryParams.addAll(_queryParams('', 'normalize', normalize));
    }
    if (rgb != null) {
      queryParams.addAll(_queryParams('', 'rgb', rgb));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Recipe Taste by ID Widget
  ///
  /// Get a recipe's taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The recipe id.
  ///
  /// * [bool] normalize:
  ///   Whether to normalize to the strongest taste.
  ///
  /// * [String] rgb:
  ///   Red, green, blue values for the chart color.
  Future<String?> visualizeRecipeTasteByID(int id, { bool? normalize, String? rgb, }) async {
    final response = await visualizeRecipeTasteByIDWithHttpInfo(id,  normalize: normalize, rgb: rgb, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
    
    }
    return null;
  }
}
