package com.spoonacular;

import com.spoonacular.client.ApiUtils
import java.math.BigDecimal
import com.spoonacular.client.model.InlineObject2
import com.spoonacular.client.model.InlineResponse20022
import com.spoonacular.client.model.InlineResponse20024
import com.spoonacular.client.model.InlineResponse20025
import com.spoonacular.client.model.InlineResponse20026
import com.spoonacular.client.model.InlineResponse20034
import com.spoonacular.client.model.RecipesParseIngredientsNutritionWeightPerServing

class IngredientsApi {
    String basePath = "https://api.spoonacular.com"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def autocompleteIngredientSearch ( String query, Integer number, Boolean metaInformation, String intolerances, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/food/ingredients/autocomplete"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (query != null) {
            queryParams.put("query", query)
        }
        if (number != null) {
            queryParams.put("number", number)
        }
        if (metaInformation != null) {
            queryParams.put("metaInformation", metaInformation)
        }
        if (intolerances != null) {
            queryParams.put("intolerances", intolerances)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    InlineResponse20024.class )

    }

    def computeIngredientAmount ( BigDecimal id, String nutrient, BigDecimal target, String unit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/food/ingredients/${id}/amount"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }
        // verify required params are set
        if (nutrient == null) {
            throw new RuntimeException("missing required params nutrient")
        }
        // verify required params are set
        if (target == null) {
            throw new RuntimeException("missing required params target")
        }

        if (nutrient != null) {
            queryParams.put("nutrient", nutrient)
        }
        if (target != null) {
            queryParams.put("target", target)
        }
        if (unit != null) {
            queryParams.put("unit", unit)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    RecipesParseIngredientsNutritionWeightPerServing.class )

    }

    def getIngredientInformation ( Integer id, BigDecimal amount, String unit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/food/ingredients/${id}/information"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }

        if (amount != null) {
            queryParams.put("amount", amount)
        }
        if (unit != null) {
            queryParams.put("unit", unit)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    InlineResponse20022.class )

    }

    def getIngredientSubstitutes ( String ingredientName, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/food/ingredients/substitutes"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (ingredientName == null) {
            throw new RuntimeException("missing required params ingredientName")
        }

        if (ingredientName != null) {
            queryParams.put("ingredientName", ingredientName)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    InlineResponse20026.class )

    }

    def getIngredientSubstitutesByID ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/food/ingredients/${id}/substitutes"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    InlineResponse20026.class )

    }

    def ingredientSearch ( String query, Boolean addChildren, BigDecimal minProteinPercent, BigDecimal maxProteinPercent, BigDecimal minFatPercent, BigDecimal maxFatPercent, BigDecimal minCarbsPercent, BigDecimal maxCarbsPercent, Boolean metaInformation, String intolerances, String sort, String sortDirection, Integer offset, Integer number, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/food/ingredients/search"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (query != null) {
            queryParams.put("query", query)
        }
        if (addChildren != null) {
            queryParams.put("addChildren", addChildren)
        }
        if (minProteinPercent != null) {
            queryParams.put("minProteinPercent", minProteinPercent)
        }
        if (maxProteinPercent != null) {
            queryParams.put("maxProteinPercent", maxProteinPercent)
        }
        if (minFatPercent != null) {
            queryParams.put("minFatPercent", minFatPercent)
        }
        if (maxFatPercent != null) {
            queryParams.put("maxFatPercent", maxFatPercent)
        }
        if (minCarbsPercent != null) {
            queryParams.put("minCarbsPercent", minCarbsPercent)
        }
        if (maxCarbsPercent != null) {
            queryParams.put("maxCarbsPercent", maxCarbsPercent)
        }
        if (metaInformation != null) {
            queryParams.put("metaInformation", metaInformation)
        }
        if (intolerances != null) {
            queryParams.put("intolerances", intolerances)
        }
        if (sort != null) {
            queryParams.put("sort", sort)
        }
        if (sortDirection != null) {
            queryParams.put("sortDirection", sortDirection)
        }
        if (offset != null) {
            queryParams.put("offset", offset)
        }
        if (number != null) {
            queryParams.put("number", number)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    InlineResponse20025.class )

    }

    def ingredientsByIDImage ( BigDecimal id, String measure, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/recipes/${id}/ingredientWidget.png"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }

        if (measure != null) {
            queryParams.put("measure", measure)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    Object.class )

    }

    def mapIngredientsToGroceryProducts ( InlineObject2 inlineObject2, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/food/ingredients/map"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (inlineObject2 == null) {
            throw new RuntimeException("missing required params inlineObject2")
        }



        contentType = 'application/json';
        bodyParams = inlineObject2


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "array",
                    InlineResponse20034.class )

    }

    def visualizeIngredients ( String contentType, String language, String accept, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/recipes/visualizeIngredients"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (language != null) {
            queryParams.put("language", language)
        }

        if (contentType != null) {
            headerParams.put("Content-Type", contentType)
        }
        if (accept != null) {
            headerParams.put("Accept", accept)
        }



        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    String.class )

    }

}
