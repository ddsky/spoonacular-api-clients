package com.spoonacular;

import com.spoonacular.client.ApiUtils
import java.math.BigDecimal
import com.spoonacular.client.model.GetDishPairingForWine200Response
import com.spoonacular.client.model.GetWineDescription200Response
import com.spoonacular.client.model.GetWinePairing200Response
import com.spoonacular.client.model.GetWineRecommendation200Response

class WineApi {
    String basePath = "https://api.spoonacular.com"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def getDishPairingForWine ( String wine, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/food/wine/dishes"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (wine == null) {
            throw new RuntimeException("missing required params wine")
        }

        if (wine != null) {
            queryParams.put("wine", wine)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    GetDishPairingForWine200Response.class )

    }

    def getWineDescription ( String wine, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/food/wine/description"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (wine == null) {
            throw new RuntimeException("missing required params wine")
        }

        if (wine != null) {
            queryParams.put("wine", wine)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    GetWineDescription200Response.class )

    }

    def getWinePairing ( String food, BigDecimal maxPrice, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/food/wine/pairing"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (food == null) {
            throw new RuntimeException("missing required params food")
        }

        if (food != null) {
            queryParams.put("food", food)
        }
        if (maxPrice != null) {
            queryParams.put("maxPrice", maxPrice)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    GetWinePairing200Response.class )

    }

    def getWineRecommendation ( String wine, BigDecimal maxPrice, BigDecimal minRating, BigDecimal number, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/food/wine/recommendation"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (wine == null) {
            throw new RuntimeException("missing required params wine")
        }

        if (wine != null) {
            queryParams.put("wine", wine)
        }
        if (maxPrice != null) {
            queryParams.put("maxPrice", maxPrice)
        }
        if (minRating != null) {
            queryParams.put("minRating", minRating)
        }
        if (number != null) {
            queryParams.put("number", number)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    GetWineRecommendation200Response.class )

    }

}
