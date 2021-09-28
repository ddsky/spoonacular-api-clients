package com.spoonacular;

import com.spoonacular.client.ApiUtils
import java.math.BigDecimal
import com.spoonacular.client.model.InlineResponse20043
import com.spoonacular.client.model.InlineResponse20044
import com.spoonacular.client.model.InlineResponse20045
import com.spoonacular.client.model.InlineResponse20046

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
                    InlineResponse20043.class )

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
                    InlineResponse20045.class )

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
                    InlineResponse20044.class )

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
                    InlineResponse20046.class )

    }

}
