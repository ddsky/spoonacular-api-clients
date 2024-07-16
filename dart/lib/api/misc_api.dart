//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class MiscApi {
  MiscApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Detect Food in Text
  ///
  /// Take any text and find all mentions of food contained within it. This task is also called Named Entity Recognition (NER). In this case, the entities are foods. Either dishes, such as pizza or cheeseburger, or ingredients, such as cucumber or almonds.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] text (required):
  Future<Response> detectFoodInTextWithHttpInfo(String text,) async {
    // ignore: prefer_const_declarations
    final path = r'/food/detect';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/x-www-form-urlencoded'];

    if (text != null) {
      formParams[r'text'] = parameterToString(text);
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

  /// Detect Food in Text
  ///
  /// Take any text and find all mentions of food contained within it. This task is also called Named Entity Recognition (NER). In this case, the entities are foods. Either dishes, such as pizza or cheeseburger, or ingredients, such as cucumber or almonds.
  ///
  /// Parameters:
  ///
  /// * [String] text (required):
  Future<DetectFoodInText200Response?> detectFoodInText(String text,) async {
    final response = await detectFoodInTextWithHttpInfo(text,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DetectFoodInText200Response',) as DetectFoodInText200Response;
    
    }
    return null;
  }

  /// Random Food Joke
  ///
  /// Get a random joke that is related to food. Caution: this is an endpoint for adults!
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getARandomFoodJokeWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/food/jokes/random';

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

  /// Random Food Joke
  ///
  /// Get a random joke that is related to food. Caution: this is an endpoint for adults!
  Future<GetARandomFoodJoke200Response?> getARandomFoodJoke() async {
    final response = await getARandomFoodJokeWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetARandomFoodJoke200Response',) as GetARandomFoodJoke200Response;
    
    }
    return null;
  }

  /// Conversation Suggests
  ///
  /// This endpoint returns suggestions for things the user can say or ask the chatbot.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] query (required):
  ///   A (partial) query from the user. The endpoint will return if it matches topics it can talk about.
  ///
  /// * [num] number:
  ///   The number of suggestions to return (between 1 and 25).
  Future<Response> getConversationSuggestsWithHttpInfo(String query, { num? number, }) async {
    // ignore: prefer_const_declarations
    final path = r'/food/converse/suggest';

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

  /// Conversation Suggests
  ///
  /// This endpoint returns suggestions for things the user can say or ask the chatbot.
  ///
  /// Parameters:
  ///
  /// * [String] query (required):
  ///   A (partial) query from the user. The endpoint will return if it matches topics it can talk about.
  ///
  /// * [num] number:
  ///   The number of suggestions to return (between 1 and 25).
  Future<GetConversationSuggests200Response?> getConversationSuggests(String query, { num? number, }) async {
    final response = await getConversationSuggestsWithHttpInfo(query,  number: number, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetConversationSuggests200Response',) as GetConversationSuggests200Response;
    
    }
    return null;
  }

  /// Random Food Trivia
  ///
  /// Returns random food trivia.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getRandomFoodTriviaWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/food/trivia/random';

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

  /// Random Food Trivia
  ///
  /// Returns random food trivia.
  Future<GetARandomFoodJoke200Response?> getRandomFoodTrivia() async {
    final response = await getRandomFoodTriviaWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetARandomFoodJoke200Response',) as GetARandomFoodJoke200Response;
    
    }
    return null;
  }

  /// Image Analysis by URL
  ///
  /// Analyze a food image. The API tries to classify the image, guess the nutrition, and find a matching recipes.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] imageUrl (required):
  ///   The URL of the image to be analyzed.
  Future<Response> imageAnalysisByURLWithHttpInfo(String imageUrl,) async {
    // ignore: prefer_const_declarations
    final path = r'/food/images/analyze';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'imageUrl', imageUrl));

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

  /// Image Analysis by URL
  ///
  /// Analyze a food image. The API tries to classify the image, guess the nutrition, and find a matching recipes.
  ///
  /// Parameters:
  ///
  /// * [String] imageUrl (required):
  ///   The URL of the image to be analyzed.
  Future<ImageAnalysisByURL200Response?> imageAnalysisByURL(String imageUrl,) async {
    final response = await imageAnalysisByURLWithHttpInfo(imageUrl,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ImageAnalysisByURL200Response',) as ImageAnalysisByURL200Response;
    
    }
    return null;
  }

  /// Image Classification by URL
  ///
  /// Classify a food image.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] imageUrl (required):
  ///   The URL of the image to be classified.
  Future<Response> imageClassificationByURLWithHttpInfo(String imageUrl,) async {
    // ignore: prefer_const_declarations
    final path = r'/food/images/classify';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'imageUrl', imageUrl));

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

  /// Image Classification by URL
  ///
  /// Classify a food image.
  ///
  /// Parameters:
  ///
  /// * [String] imageUrl (required):
  ///   The URL of the image to be classified.
  Future<ImageClassificationByURL200Response?> imageClassificationByURL(String imageUrl,) async {
    final response = await imageClassificationByURLWithHttpInfo(imageUrl,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ImageClassificationByURL200Response',) as ImageClassificationByURL200Response;
    
    }
    return null;
  }

  /// Search All Food
  ///
  /// Search all food content with one call. That includes recipes, grocery products, menu items, simple foods (ingredients), and food videos.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] query (required):
  ///   The search query.
  ///
  /// * [int] offset:
  ///   The number of results to skip (between 0 and 900).
  ///
  /// * [int] number:
  ///   The maximum number of items to return (between 1 and 100). Defaults to 10.
  Future<Response> searchAllFoodWithHttpInfo(String query, { int? offset, int? number, }) async {
    // ignore: prefer_const_declarations
    final path = r'/food/search';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'query', query));
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

  /// Search All Food
  ///
  /// Search all food content with one call. That includes recipes, grocery products, menu items, simple foods (ingredients), and food videos.
  ///
  /// Parameters:
  ///
  /// * [String] query (required):
  ///   The search query.
  ///
  /// * [int] offset:
  ///   The number of results to skip (between 0 and 900).
  ///
  /// * [int] number:
  ///   The maximum number of items to return (between 1 and 100). Defaults to 10.
  Future<SearchAllFood200Response?> searchAllFood(String query, { int? offset, int? number, }) async {
    final response = await searchAllFoodWithHttpInfo(query,  offset: offset, number: number, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SearchAllFood200Response',) as SearchAllFood200Response;
    
    }
    return null;
  }

  /// Search Custom Foods
  ///
  /// Search custom foods in a user's account.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] query (required):
  ///   The (natural language) search query.
  ///
  /// * [String] username (required):
  ///   The username.
  ///
  /// * [String] hash (required):
  ///   The private hash for the username.
  ///
  /// * [int] offset:
  ///   The number of results to skip (between 0 and 900).
  ///
  /// * [int] number:
  ///   The maximum number of items to return (between 1 and 100). Defaults to 10.
  Future<Response> searchCustomFoodsWithHttpInfo(String query, String username, String hash, { int? offset, int? number, }) async {
    // ignore: prefer_const_declarations
    final path = r'/food/customFoods/search';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'query', query));
      queryParams.addAll(_queryParams('', 'username', username));
      queryParams.addAll(_queryParams('', 'hash', hash));
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

  /// Search Custom Foods
  ///
  /// Search custom foods in a user's account.
  ///
  /// Parameters:
  ///
  /// * [String] query (required):
  ///   The (natural language) search query.
  ///
  /// * [String] username (required):
  ///   The username.
  ///
  /// * [String] hash (required):
  ///   The private hash for the username.
  ///
  /// * [int] offset:
  ///   The number of results to skip (between 0 and 900).
  ///
  /// * [int] number:
  ///   The maximum number of items to return (between 1 and 100). Defaults to 10.
  Future<SearchCustomFoods200Response?> searchCustomFoods(String query, String username, String hash, { int? offset, int? number, }) async {
    final response = await searchCustomFoodsWithHttpInfo(query, username, hash,  offset: offset, number: number, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SearchCustomFoods200Response',) as SearchCustomFoods200Response;
    
    }
    return null;
  }

  /// Search Food Videos
  ///
  /// Find recipe and other food related videos.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] query (required):
  ///   The (natural language) search query.
  ///
  /// * [String] type:
  ///   The type of the recipes. See a full list of supported meal types.
  ///
  /// * [String] cuisine:
  ///   The cuisine(s) of the recipes. One or more, comma separated. See a full list of supported cuisines.
  ///
  /// * [String] diet:
  ///   The diet for which the recipes must be suitable. See a full list of supported diets.
  ///
  /// * [String] includeIngredients:
  ///   A comma-separated list of ingredients that the recipes should contain.
  ///
  /// * [String] excludeIngredients:
  ///   A comma-separated list of ingredients or ingredient types that the recipes must not contain.
  ///
  /// * [num] minLength:
  ///   Minimum video length in seconds.
  ///
  /// * [num] maxLength:
  ///   Maximum video length in seconds.
  ///
  /// * [int] offset:
  ///   The number of results to skip (between 0 and 900).
  ///
  /// * [int] number:
  ///   The maximum number of items to return (between 1 and 100). Defaults to 10.
  Future<Response> searchFoodVideosWithHttpInfo(String query, { String? type, String? cuisine, String? diet, String? includeIngredients, String? excludeIngredients, num? minLength, num? maxLength, int? offset, int? number, }) async {
    // ignore: prefer_const_declarations
    final path = r'/food/videos/search';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'query', query));
    if (type != null) {
      queryParams.addAll(_queryParams('', 'type', type));
    }
    if (cuisine != null) {
      queryParams.addAll(_queryParams('', 'cuisine', cuisine));
    }
    if (diet != null) {
      queryParams.addAll(_queryParams('', 'diet', diet));
    }
    if (includeIngredients != null) {
      queryParams.addAll(_queryParams('', 'includeIngredients', includeIngredients));
    }
    if (excludeIngredients != null) {
      queryParams.addAll(_queryParams('', 'excludeIngredients', excludeIngredients));
    }
    if (minLength != null) {
      queryParams.addAll(_queryParams('', 'minLength', minLength));
    }
    if (maxLength != null) {
      queryParams.addAll(_queryParams('', 'maxLength', maxLength));
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

  /// Search Food Videos
  ///
  /// Find recipe and other food related videos.
  ///
  /// Parameters:
  ///
  /// * [String] query (required):
  ///   The (natural language) search query.
  ///
  /// * [String] type:
  ///   The type of the recipes. See a full list of supported meal types.
  ///
  /// * [String] cuisine:
  ///   The cuisine(s) of the recipes. One or more, comma separated. See a full list of supported cuisines.
  ///
  /// * [String] diet:
  ///   The diet for which the recipes must be suitable. See a full list of supported diets.
  ///
  /// * [String] includeIngredients:
  ///   A comma-separated list of ingredients that the recipes should contain.
  ///
  /// * [String] excludeIngredients:
  ///   A comma-separated list of ingredients or ingredient types that the recipes must not contain.
  ///
  /// * [num] minLength:
  ///   Minimum video length in seconds.
  ///
  /// * [num] maxLength:
  ///   Maximum video length in seconds.
  ///
  /// * [int] offset:
  ///   The number of results to skip (between 0 and 900).
  ///
  /// * [int] number:
  ///   The maximum number of items to return (between 1 and 100). Defaults to 10.
  Future<SearchFoodVideos200Response?> searchFoodVideos(String query, { String? type, String? cuisine, String? diet, String? includeIngredients, String? excludeIngredients, num? minLength, num? maxLength, int? offset, int? number, }) async {
    final response = await searchFoodVideosWithHttpInfo(query,  type: type, cuisine: cuisine, diet: diet, includeIngredients: includeIngredients, excludeIngredients: excludeIngredients, minLength: minLength, maxLength: maxLength, offset: offset, number: number, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SearchFoodVideos200Response',) as SearchFoodVideos200Response;
    
    }
    return null;
  }

  /// Search Site Content
  ///
  /// Search spoonacular's site content. You'll be able to find everything that you could also find using the search suggestions on spoonacular.com. This is a suggest API so you can send partial strings as queries.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] query (required):
  ///   The query to search for. You can also use partial queries such as \"spagh\" to already find spaghetti recipes, articles, grocery products, and other content.
  Future<Response> searchSiteContentWithHttpInfo(String query,) async {
    // ignore: prefer_const_declarations
    final path = r'/food/site/search';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'query', query));

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

  /// Search Site Content
  ///
  /// Search spoonacular's site content. You'll be able to find everything that you could also find using the search suggestions on spoonacular.com. This is a suggest API so you can send partial strings as queries.
  ///
  /// Parameters:
  ///
  /// * [String] query (required):
  ///   The query to search for. You can also use partial queries such as \"spagh\" to already find spaghetti recipes, articles, grocery products, and other content.
  Future<SearchSiteContent200Response?> searchSiteContent(String query,) async {
    final response = await searchSiteContentWithHttpInfo(query,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SearchSiteContent200Response',) as SearchSiteContent200Response;
    
    }
    return null;
  }

  /// Talk to Chatbot
  ///
  /// This endpoint can be used to have a conversation about food with the spoonacular chatbot. Use the \"Get Conversation Suggests\" endpoint to show your user what he or she can say.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] text (required):
  ///   The request / question / answer from the user to the chatbot.
  ///
  /// * [String] contextId:
  ///   An arbitrary globally unique id for your conversation. The conversation can contain states so you should pass your context id if you want the bot to be able to remember the conversation.
  Future<Response> talkToChatbotWithHttpInfo(String text, { String? contextId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/food/converse';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'text', text));
    if (contextId != null) {
      queryParams.addAll(_queryParams('', 'contextId', contextId));
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

  /// Talk to Chatbot
  ///
  /// This endpoint can be used to have a conversation about food with the spoonacular chatbot. Use the \"Get Conversation Suggests\" endpoint to show your user what he or she can say.
  ///
  /// Parameters:
  ///
  /// * [String] text (required):
  ///   The request / question / answer from the user to the chatbot.
  ///
  /// * [String] contextId:
  ///   An arbitrary globally unique id for your conversation. The conversation can contain states so you should pass your context id if you want the bot to be able to remember the conversation.
  Future<TalkToChatbot200Response?> talkToChatbot(String text, { String? contextId, }) async {
    final response = await talkToChatbotWithHttpInfo(text,  contextId: contextId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TalkToChatbot200Response',) as TalkToChatbot200Response;
    
    }
    return null;
  }
}
