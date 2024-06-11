package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.AutocompleteProductSearch200Response
import java.math.BigDecimal
import org.openapitools.model.ClassifyGroceryProduct200Response
import org.openapitools.model.ClassifyGroceryProductBulk200ResponseInner
import org.openapitools.model.ClassifyGroceryProductBulkRequestInner
import org.openapitools.model.ClassifyGroceryProductRequest
import org.openapitools.model.GetComparableProducts200Response
import org.openapitools.model.GetProductInformation200Response
import org.openapitools.model.SearchGroceryProducts200Response
import org.openapitools.model.SearchGroceryProductsByUPC200Response
import java.util.Set

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
                    AutocompleteProductSearch200Response.class )

    }

    def classifyGroceryProduct ( ClassifyGroceryProductRequest classifyGroceryProductRequest, String locale, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/food/products/classify"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (classifyGroceryProductRequest == null) {
            throw new RuntimeException("missing required params classifyGroceryProductRequest")
        }

        if (locale != null) {
            queryParams.put("locale", locale)
        }


        contentType = 'application/json';
        bodyParams = classifyGroceryProductRequest


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    ClassifyGroceryProduct200Response.class )

    }

    def classifyGroceryProductBulk ( Set<ClassifyGroceryProductBulkRequestInner> classifyGroceryProductBulkRequestInner, String locale, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/food/products/classifyBatch"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (classifyGroceryProductBulkRequestInner == null) {
            throw new RuntimeException("missing required params classifyGroceryProductBulkRequestInner")
        }

        if (locale != null) {
            queryParams.put("locale", locale)
        }


        contentType = 'application/json';
        bodyParams = classifyGroceryProductBulkRequestInner


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "set",
                    ClassifyGroceryProductBulk200ResponseInner.class )

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
                    GetComparableProducts200Response.class )

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
                    GetProductInformation200Response.class )

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
                    File.class )

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
                    File.class )

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
                    SearchGroceryProducts200Response.class )

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
                    SearchGroceryProductsByUPC200Response.class )

    }

    def visualizeProductNutritionByID ( Integer id, Boolean defaultCss, Closure onSuccess, Closure onFailure)  {
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




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    String.class )

    }

}
