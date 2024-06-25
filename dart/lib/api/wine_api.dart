//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class WineApi {
  WineApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Dish Pairing for Wine
  ///
  /// Find a dish that goes well with a given wine.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] wine (required):
  ///   The type of wine that should be paired, e.g. \"merlot\", \"riesling\", or \"malbec\".
  Future<Response> getDishPairingForWineWithHttpInfo(String wine,) async {
    // ignore: prefer_const_declarations
    final path = r'/food/wine/dishes';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'wine', wine));

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

  /// Dish Pairing for Wine
  ///
  /// Find a dish that goes well with a given wine.
  ///
  /// Parameters:
  ///
  /// * [String] wine (required):
  ///   The type of wine that should be paired, e.g. \"merlot\", \"riesling\", or \"malbec\".
  Future<GetDishPairingForWine200Response?> getDishPairingForWine(String wine,) async {
    final response = await getDishPairingForWineWithHttpInfo(wine,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetDishPairingForWine200Response',) as GetDishPairingForWine200Response;
    
    }
    return null;
  }

  /// Wine Description
  ///
  /// Get a simple description of a certain wine, e.g. \"malbec\", \"riesling\", or \"merlot\".
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] wine (required):
  ///   The name of the wine that should be paired, e.g. \"merlot\", \"riesling\", or \"malbec\".
  Future<Response> getWineDescriptionWithHttpInfo(String wine,) async {
    // ignore: prefer_const_declarations
    final path = r'/food/wine/description';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'wine', wine));

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

  /// Wine Description
  ///
  /// Get a simple description of a certain wine, e.g. \"malbec\", \"riesling\", or \"merlot\".
  ///
  /// Parameters:
  ///
  /// * [String] wine (required):
  ///   The name of the wine that should be paired, e.g. \"merlot\", \"riesling\", or \"malbec\".
  Future<GetWineDescription200Response?> getWineDescription(String wine,) async {
    final response = await getWineDescriptionWithHttpInfo(wine,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetWineDescription200Response',) as GetWineDescription200Response;
    
    }
    return null;
  }

  /// Wine Pairing
  ///
  /// Find a wine that goes well with a food. Food can be a dish name (\"steak\"), an ingredient name (\"salmon\"), or a cuisine (\"italian\").
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] food (required):
  ///   The food to get a pairing for. This can be a dish (\"steak\"), an ingredient (\"salmon\"), or a cuisine (\"italian\").
  ///
  /// * [num] maxPrice:
  ///   The maximum price for the specific wine recommendation in USD.
  Future<Response> getWinePairingWithHttpInfo(String food, { num? maxPrice, }) async {
    // ignore: prefer_const_declarations
    final path = r'/food/wine/pairing';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'food', food));
    if (maxPrice != null) {
      queryParams.addAll(_queryParams('', 'maxPrice', maxPrice));
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

  /// Wine Pairing
  ///
  /// Find a wine that goes well with a food. Food can be a dish name (\"steak\"), an ingredient name (\"salmon\"), or a cuisine (\"italian\").
  ///
  /// Parameters:
  ///
  /// * [String] food (required):
  ///   The food to get a pairing for. This can be a dish (\"steak\"), an ingredient (\"salmon\"), or a cuisine (\"italian\").
  ///
  /// * [num] maxPrice:
  ///   The maximum price for the specific wine recommendation in USD.
  Future<GetWinePairing200Response?> getWinePairing(String food, { num? maxPrice, }) async {
    final response = await getWinePairingWithHttpInfo(food,  maxPrice: maxPrice, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetWinePairing200Response',) as GetWinePairing200Response;
    
    }
    return null;
  }

  /// Wine Recommendation
  ///
  /// Get a specific wine recommendation (concrete product) for a given wine type, e.g. \"merlot\".
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] wine (required):
  ///   The type of wine to get a specific product recommendation for.
  ///
  /// * [num] maxPrice:
  ///   The maximum price for the specific wine recommendation in USD.
  ///
  /// * [num] minRating:
  ///   The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars.
  ///
  /// * [num] number:
  ///   The number of wine recommendations expected (between 1 and 100).
  Future<Response> getWineRecommendationWithHttpInfo(String wine, { num? maxPrice, num? minRating, num? number, }) async {
    // ignore: prefer_const_declarations
    final path = r'/food/wine/recommendation';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'wine', wine));
    if (maxPrice != null) {
      queryParams.addAll(_queryParams('', 'maxPrice', maxPrice));
    }
    if (minRating != null) {
      queryParams.addAll(_queryParams('', 'minRating', minRating));
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

  /// Wine Recommendation
  ///
  /// Get a specific wine recommendation (concrete product) for a given wine type, e.g. \"merlot\".
  ///
  /// Parameters:
  ///
  /// * [String] wine (required):
  ///   The type of wine to get a specific product recommendation for.
  ///
  /// * [num] maxPrice:
  ///   The maximum price for the specific wine recommendation in USD.
  ///
  /// * [num] minRating:
  ///   The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars.
  ///
  /// * [num] number:
  ///   The number of wine recommendations expected (between 1 and 100).
  Future<GetWineRecommendation200Response?> getWineRecommendation(String wine, { num? maxPrice, num? minRating, num? number, }) async {
    final response = await getWineRecommendationWithHttpInfo(wine,  maxPrice: maxPrice, minRating: minRating, number: number, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetWineRecommendation200Response',) as GetWineRecommendation200Response;
    
    }
    return null;
  }
}
