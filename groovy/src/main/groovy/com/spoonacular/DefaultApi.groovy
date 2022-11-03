package com.spoonacular;

import com.spoonacular.client.ApiUtils
import com.spoonacular.client.model.AnalyzeRecipeRequest
import com.spoonacular.client.model.AnalyzeRecipeRequest1
import java.math.BigDecimal
import com.spoonacular.client.model.SearchRestaurants200Response

class DefaultApi {
    String basePath = "https://api.spoonacular.com"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def analyzeRecipe ( AnalyzeRecipeRequest analyzeRecipeRequest, String language, Boolean includeNutrition, Boolean includeTaste, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/recipes/analyze"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (analyzeRecipeRequest == null) {
            throw new RuntimeException("missing required params analyzeRecipeRequest")
        }

        if (language != null) {
            queryParams.put("language", language)
        }
        if (includeNutrition != null) {
            queryParams.put("includeNutrition", includeNutrition)
        }
        if (includeTaste != null) {
            queryParams.put("includeTaste", includeTaste)
        }


        contentType = '';
        bodyParams = analyzeRecipeRequest


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    Object.class )

    }

    def searchRestaurants ( String query, BigDecimal lat, BigDecimal lng, BigDecimal distance, BigDecimal budget, String cuisine, BigDecimal minRating, Boolean isOpen, String sort, BigDecimal page, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/food/restaurants/search"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (query != null) {
            queryParams.put("query", query)
        }
        if (lat != null) {
            queryParams.put("lat", lat)
        }
        if (lng != null) {
            queryParams.put("lng", lng)
        }
        if (distance != null) {
            queryParams.put("distance", distance)
        }
        if (budget != null) {
            queryParams.put("budget", budget)
        }
        if (cuisine != null) {
            queryParams.put("cuisine", cuisine)
        }
        if (minRating != null) {
            queryParams.put("min-rating", minRating)
        }
        if (isOpen != null) {
            queryParams.put("is-open", isOpen)
        }
        if (sort != null) {
            queryParams.put("sort", sort)
        }
        if (page != null) {
            queryParams.put("page", page)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    SearchRestaurants200Response.class )

    }

}
