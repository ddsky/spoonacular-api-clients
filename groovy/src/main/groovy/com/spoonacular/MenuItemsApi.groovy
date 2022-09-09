package com.spoonacular;

import com.spoonacular.client.ApiUtils
import com.spoonacular.client.model.AutocompleteMenuItemSearch200Response
import java.math.BigDecimal
import com.spoonacular.client.model.GetMenuItemInformation200Response
import com.spoonacular.client.model.SearchMenuItems200Response

class MenuItemsApi {
    String basePath = "https://api.spoonacular.com"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def autocompleteMenuItemSearch ( String query, BigDecimal number, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/food/menuItems/suggest"

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
                    AutocompleteMenuItemSearch200Response.class )

    }

    def getMenuItemInformation ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/food/menuItems/${id}"

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
                    GetMenuItemInformation200Response.class )

    }

    def menuItemNutritionByIDImage ( BigDecimal id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/food/menuItems/${id}/nutritionWidget.png"

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

    def menuItemNutritionLabelImage ( BigDecimal id, Boolean showOptionalNutrients, Boolean showZeroValues, Boolean showIngredients, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/food/menuItems/${id}/nutritionLabel.png"

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

    def menuItemNutritionLabelWidget ( BigDecimal id, Boolean defaultCss, Boolean showOptionalNutrients, Boolean showZeroValues, Boolean showIngredients, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/food/menuItems/${id}/nutritionLabel"

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

    def searchMenuItems ( String query, BigDecimal minCalories, BigDecimal maxCalories, BigDecimal minCarbs, BigDecimal maxCarbs, BigDecimal minProtein, BigDecimal maxProtein, BigDecimal minFat, BigDecimal maxFat, Boolean addMenuItemInformation, Integer offset, Integer number, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/food/menuItems/search"

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
        if (addMenuItemInformation != null) {
            queryParams.put("addMenuItemInformation", addMenuItemInformation)
        }
        if (offset != null) {
            queryParams.put("offset", offset)
        }
        if (number != null) {
            queryParams.put("number", number)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    SearchMenuItems200Response.class )

    }

    def visualizeMenuItemNutritionByID ( Integer id, Boolean defaultCss, String accept, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/food/menuItems/${id}/nutritionWidget"

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
