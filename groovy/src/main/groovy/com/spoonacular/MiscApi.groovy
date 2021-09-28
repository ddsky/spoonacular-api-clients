package com.spoonacular;

import com.spoonacular.client.ApiUtils
import java.math.BigDecimal
import com.spoonacular.client.model.InlineResponse20029
import com.spoonacular.client.model.InlineResponse20047
import com.spoonacular.client.model.InlineResponse20048
import com.spoonacular.client.model.InlineResponse20050
import com.spoonacular.client.model.InlineResponse20051
import com.spoonacular.client.model.InlineResponse20052
import com.spoonacular.client.model.InlineResponse20053
import com.spoonacular.client.model.InlineResponse20054
import com.spoonacular.client.model.InlineResponse20055
import com.spoonacular.client.model.InlineResponse20056

class MiscApi {
    String basePath = "https://api.spoonacular.com"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def detectFoodInText ( String contentType, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/food/detect"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType



        if (contentType != null) {
            headerParams.put("Content-Type", contentType)
        }



        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    InlineResponse20050.class )

    }

    def getARandomFoodJoke ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/food/jokes/random"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    InlineResponse20054.class )

    }

    def getConversationSuggests ( String query, BigDecimal number, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/food/converse/suggest"

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
                    InlineResponse20056.class )

    }

    def getRandomFoodTrivia ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/food/trivia/random"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    InlineResponse20054.class )

    }

    def imageAnalysisByURL ( String imageUrl, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/food/images/analyze"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (imageUrl == null) {
            throw new RuntimeException("missing required params imageUrl")
        }

        if (imageUrl != null) {
            queryParams.put("imageUrl", imageUrl)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    InlineResponse20048.class )

    }

    def imageClassificationByURL ( String imageUrl, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/food/images/classify"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (imageUrl == null) {
            throw new RuntimeException("missing required params imageUrl")
        }

        if (imageUrl != null) {
            queryParams.put("imageUrl", imageUrl)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    InlineResponse20047.class )

    }

    def searchAllFood ( String query, Integer offset, Integer number, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/food/search"

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
        if (offset != null) {
            queryParams.put("offset", offset)
        }
        if (number != null) {
            queryParams.put("number", number)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    InlineResponse20052.class )

    }

    def searchCustomFoods ( String username, String hash, String query, Integer offset, Integer number, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/food/customFoods/search"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (username == null) {
            throw new RuntimeException("missing required params username")
        }
        // verify required params are set
        if (hash == null) {
            throw new RuntimeException("missing required params hash")
        }

        if (query != null) {
            queryParams.put("query", query)
        }
        if (username != null) {
            queryParams.put("username", username)
        }
        if (hash != null) {
            queryParams.put("hash", hash)
        }
        if (offset != null) {
            queryParams.put("offset", offset)
        }
        if (number != null) {
            queryParams.put("number", number)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    InlineResponse20029.class )

    }

    def searchFoodVideos ( String query, String type, String cuisine, String diet, String includeIngredients, String excludeIngredients, BigDecimal minLength, BigDecimal maxLength, Integer offset, Integer number, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/food/videos/search"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (query != null) {
            queryParams.put("query", query)
        }
        if (type != null) {
            queryParams.put("type", type)
        }
        if (cuisine != null) {
            queryParams.put("cuisine", cuisine)
        }
        if (diet != null) {
            queryParams.put("diet", diet)
        }
        if (includeIngredients != null) {
            queryParams.put("includeIngredients", includeIngredients)
        }
        if (excludeIngredients != null) {
            queryParams.put("excludeIngredients", excludeIngredients)
        }
        if (minLength != null) {
            queryParams.put("minLength", minLength)
        }
        if (maxLength != null) {
            queryParams.put("maxLength", maxLength)
        }
        if (offset != null) {
            queryParams.put("offset", offset)
        }
        if (number != null) {
            queryParams.put("number", number)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    InlineResponse20053.class )

    }

    def searchSiteContent ( String query, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/food/site/search"

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




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    InlineResponse20051.class )

    }

    def talkToChatbot ( String text, String contextId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/food/converse"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (text == null) {
            throw new RuntimeException("missing required params text")
        }

        if (text != null) {
            queryParams.put("text", text)
        }
        if (contextId != null) {
            queryParams.put("contextId", contextId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    InlineResponse20055.class )

    }

}
