package com.spoonacular;

import com.spoonacular.client.ApiUtils
import java.math.BigDecimal
import com.spoonacular.client.model.InlineObject
import com.spoonacular.client.model.InlineObject1
import com.spoonacular.client.model.InlineResponse20027
import com.spoonacular.client.model.InlineResponse20028
import com.spoonacular.client.model.InlineResponse20030
import com.spoonacular.client.model.InlineResponse20031
import com.spoonacular.client.model.InlineResponse20032
import com.spoonacular.client.model.InlineResponse20033
import java.util.List

class ProductsApi {
    String basePath = "https://api.spoonacular.com"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def autocompleteProductSearch ( String query, Integer number, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/food/products/suggest"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (query == null) {
            throw new RuntimeException("missing required params query")
        }

        if (query != null) {
            queryParams.put("query", query)
        }
        if (number != null) {
            queryParams.put("number", number)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    InlineResponse20032.class )

    }

    def classifyGroceryProduct ( InlineObject1 inlineObject1, String locale, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/food/products/classify"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (inlineObject1 == null) {
            throw new RuntimeException("missing required params inlineObject1")
        }

        if (locale != null) {
            queryParams.put("locale", locale)
        }


        contentType = 'application/json';
        bodyParams = inlineObject1


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    InlineResponse20033.class )

    }

    def classifyGroceryProductBulk ( List<InlineObject> inlineObject, String locale, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/food/products/classifyBatch"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (inlineObject == null) {
            throw new RuntimeException("missing required params inlineObject")
        }

        if (locale != null) {
            queryParams.put("locale", locale)
        }


        contentType = 'application/json';
        bodyParams = inlineObject


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "array",
                    InlineResponse20033.class )

    }

    def getComparableProducts ( BigDecimal upc, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/food/products/upc/${upc}/comparable"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (upc == null) {
            throw new RuntimeException("missing required params upc")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    InlineResponse20031.class )

    }

    def getProductInformation ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/food/products/${id}"

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
                    InlineResponse20030.class )

    }

    def productNutritionByIDImage ( BigDecimal id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/food/products/${id}/nutritionWidget.png"

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
                    Object.class )

    }

    def productNutritionLabelImage ( BigDecimal id, Boolean showOptionalNutrients, Boolean showZeroValues, Boolean showIngredients, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/food/products/${id}/nutritionLabel.png"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }

        if (showOptionalNutrients != null) {
            queryParams.put("showOptionalNutrients", showOptionalNutrients)
        }
        if (showZeroValues != null) {
            queryParams.put("showZeroValues", showZeroValues)
        }
        if (showIngredients != null) {
            queryParams.put("showIngredients", showIngredients)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    Object.class )

    }

    def productNutritionLabelWidget ( BigDecimal id, Boolean defaultCss, Boolean showOptionalNutrients, Boolean showZeroValues, Boolean showIngredients, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/food/products/${id}/nutritionLabel"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }

        if (defaultCss != null) {
            queryParams.put("defaultCss", defaultCss)
        }
        if (showOptionalNutrients != null) {
            queryParams.put("showOptionalNutrients", showOptionalNutrients)
        }
        if (showZeroValues != null) {
            queryParams.put("showZeroValues", showZeroValues)
        }
        if (showIngredients != null) {
            queryParams.put("showIngredients", showIngredients)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    String.class )

    }

    def searchGroceryProducts ( String query, BigDecimal minCalories, BigDecimal maxCalories, BigDecimal minCarbs, BigDecimal maxCarbs, BigDecimal minProtein, BigDecimal maxProtein, BigDecimal minFat, BigDecimal maxFat, Boolean addProductInformation, Integer offset, Integer number, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/food/products/search"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (query != null) {
            queryParams.put("query", query)
        }
        if (minCalories != null) {
            queryParams.put("minCalories", minCalories)
        }
        if (maxCalories != null) {
            queryParams.put("maxCalories", maxCalories)
        }
        if (minCarbs != null) {
            queryParams.put("minCarbs", minCarbs)
        }
        if (maxCarbs != null) {
            queryParams.put("maxCarbs", maxCarbs)
        }
        if (minProtein != null) {
            queryParams.put("minProtein", minProtein)
        }
        if (maxProtein != null) {
            queryParams.put("maxProtein", maxProtein)
        }
        if (minFat != null) {
            queryParams.put("minFat", minFat)
        }
        if (maxFat != null) {
            queryParams.put("maxFat", maxFat)
        }
        if (addProductInformation != null) {
            queryParams.put("addProductInformation", addProductInformation)
        }
        if (offset != null) {
            queryParams.put("offset", offset)
        }
        if (number != null) {
            queryParams.put("number", number)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    InlineResponse20027.class )

    }

    def searchGroceryProductsByUPC ( BigDecimal upc, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/food/products/upc/${upc}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (upc == null) {
            throw new RuntimeException("missing required params upc")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    InlineResponse20028.class )

    }

    def visualizeProductNutritionByID ( Integer id, Boolean defaultCss, String accept, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/food/products/${id}/nutritionWidget"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }

        if (defaultCss != null) {
            queryParams.put("defaultCss", defaultCss)
        }

        if (accept != null) {
            headerParams.put("Accept", accept)
        }



        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    String.class )

    }

}
