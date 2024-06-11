package org.openapitools.api;

import org.openapitools.api.ApiUtils
import java.math.BigDecimal
import org.openapitools.model.DetectFoodInText200Response
import org.openapitools.model.GetARandomFoodJoke200Response
import org.openapitools.model.GetConversationSuggests200Response
import org.openapitools.model.GetRandomFoodTrivia200Response
import org.openapitools.model.ImageAnalysisByURL200Response
import org.openapitools.model.ImageClassificationByURL200Response
import org.openapitools.model.SearchAllFood200Response
import org.openapitools.model.SearchCustomFoods200Response
import org.openapitools.model.SearchFoodVideos200Response
import org.openapitools.model.SearchSiteContent200Response
import org.openapitools.model.TalkToChatbot200Response

class MiscApi {
    String basePath = "https://api.spoonacular.com"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def detectFoodInText ( String text, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/food/detect"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (text == null) {
            throw new RuntimeException("missing required params text")
        }




        contentType = 'application/x-www-form-urlencoded';
        bodyParams = text

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    DetectFoodInText200Response.class )

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
                    GetARandomFoodJoke200Response.class )

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
                    GetConversationSuggests200Response.class )

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
                    GetRandomFoodTrivia200Response.class )

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
                    ImageAnalysisByURL200Response.class )

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
                    ImageClassificationByURL200Response.class )

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
                    SearchAllFood200Response.class )

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
                    SearchCustomFoods200Response.class )

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
                    SearchFoodVideos200Response.class )

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
                    SearchSiteContent200Response.class )

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
                    TalkToChatbot200Response.class )

    }

}
