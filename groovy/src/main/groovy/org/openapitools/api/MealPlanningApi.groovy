package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.AddMealPlanTemplate200Response
import org.openapitools.model.AddToMealPlanRequest
import org.openapitools.model.AddToMealPlanRequest1
import org.openapitools.model.AddToShoppingListRequest
import java.math.BigDecimal
import org.openapitools.model.ClearMealPlanDayRequest
import org.openapitools.model.ConnectUser200Response
import org.openapitools.model.ConnectUserRequest
import org.openapitools.model.DeleteFromMealPlanRequest
import org.openapitools.model.GenerateMealPlan200Response
import org.openapitools.model.GenerateShoppingList200Response
import org.openapitools.model.GenerateShoppingListRequest
import org.openapitools.model.GetMealPlanTemplate200Response
import org.openapitools.model.GetMealPlanTemplates200Response
import org.openapitools.model.GetMealPlanWeek200Response
import org.openapitools.model.GetShoppingList200Response

class MealPlanningApi {
    String basePath = "https://api.spoonacular.com"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def addMealPlanTemplate ( String username, String hash, AddToMealPlanRequest addToMealPlanRequest, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mealplanner/${username}/templates"

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
        // verify required params are set
        if (addToMealPlanRequest == null) {
            throw new RuntimeException("missing required params addToMealPlanRequest")
        }

        if (hash != null) {
            queryParams.put("hash", hash)
        }


        contentType = '';
        bodyParams = addToMealPlanRequest


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    AddMealPlanTemplate200Response.class )

    }

    def addToMealPlan ( String username, String hash, AddToMealPlanRequest addToMealPlanRequest, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mealplanner/${username}/items"

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
        // verify required params are set
        if (addToMealPlanRequest == null) {
            throw new RuntimeException("missing required params addToMealPlanRequest")
        }

        if (hash != null) {
            queryParams.put("hash", hash)
        }


        contentType = '';
        bodyParams = addToMealPlanRequest


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    Object.class )

    }

    def addToShoppingList ( String username, String hash, AddToMealPlanRequest addToMealPlanRequest, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mealplanner/${username}/shopping-list/items"

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
        // verify required params are set
        if (addToMealPlanRequest == null) {
            throw new RuntimeException("missing required params addToMealPlanRequest")
        }

        if (hash != null) {
            queryParams.put("hash", hash)
        }


        contentType = '';
        bodyParams = addToMealPlanRequest


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    GenerateShoppingList200Response.class )

    }

    def clearMealPlanDay ( String username, String date, String hash, ClearMealPlanDayRequest clearMealPlanDayRequest, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mealplanner/${username}/day/${date}"

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
        if (date == null) {
            throw new RuntimeException("missing required params date")
        }
        // verify required params are set
        if (hash == null) {
            throw new RuntimeException("missing required params hash")
        }
        // verify required params are set
        if (clearMealPlanDayRequest == null) {
            throw new RuntimeException("missing required params clearMealPlanDayRequest")
        }

        if (hash != null) {
            queryParams.put("hash", hash)
        }


        contentType = '';
        bodyParams = clearMealPlanDayRequest


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "DELETE", "",
                    Object.class )

    }

    def connectUser ( Object body, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/users/connect"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (body == null) {
            throw new RuntimeException("missing required params body")
        }



        contentType = '';
        bodyParams = body


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    ConnectUser200Response.class )

    }

    def deleteFromMealPlan ( String username, BigDecimal id, String hash, DeleteFromMealPlanRequest deleteFromMealPlanRequest, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mealplanner/${username}/items/${id}"

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
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }
        // verify required params are set
        if (hash == null) {
            throw new RuntimeException("missing required params hash")
        }
        // verify required params are set
        if (deleteFromMealPlanRequest == null) {
            throw new RuntimeException("missing required params deleteFromMealPlanRequest")
        }

        if (hash != null) {
            queryParams.put("hash", hash)
        }


        contentType = '';
        bodyParams = deleteFromMealPlanRequest


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "DELETE", "",
                    Object.class )

    }

    def deleteFromShoppingList ( String username, Integer id, String hash, DeleteFromMealPlanRequest deleteFromMealPlanRequest, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mealplanner/${username}/shopping-list/items/${id}"

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
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }
        // verify required params are set
        if (hash == null) {
            throw new RuntimeException("missing required params hash")
        }
        // verify required params are set
        if (deleteFromMealPlanRequest == null) {
            throw new RuntimeException("missing required params deleteFromMealPlanRequest")
        }

        if (hash != null) {
            queryParams.put("hash", hash)
        }


        contentType = '';
        bodyParams = deleteFromMealPlanRequest


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "DELETE", "",
                    Object.class )

    }

    def deleteMealPlanTemplate ( String username, Integer id, String hash, DeleteFromMealPlanRequest deleteFromMealPlanRequest, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mealplanner/${username}/templates/${id}"

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
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }
        // verify required params are set
        if (hash == null) {
            throw new RuntimeException("missing required params hash")
        }
        // verify required params are set
        if (deleteFromMealPlanRequest == null) {
            throw new RuntimeException("missing required params deleteFromMealPlanRequest")
        }

        if (hash != null) {
            queryParams.put("hash", hash)
        }


        contentType = '';
        bodyParams = deleteFromMealPlanRequest


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "DELETE", "",
                    Object.class )

    }

    def generateMealPlan ( String timeFrame, BigDecimal targetCalories, String diet, String exclude, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mealplanner/generate"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (timeFrame != null) {
            queryParams.put("timeFrame", timeFrame)
        }
        if (targetCalories != null) {
            queryParams.put("targetCalories", targetCalories)
        }
        if (diet != null) {
            queryParams.put("diet", diet)
        }
        if (exclude != null) {
            queryParams.put("exclude", exclude)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    GenerateMealPlan200Response.class )

    }

    def generateShoppingList ( String username, String startDate, String endDate, String hash, GenerateShoppingListRequest generateShoppingListRequest, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mealplanner/${username}/shopping-list/${start-date}/${end-date}"

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
        if (startDate == null) {
            throw new RuntimeException("missing required params startDate")
        }
        // verify required params are set
        if (endDate == null) {
            throw new RuntimeException("missing required params endDate")
        }
        // verify required params are set
        if (hash == null) {
            throw new RuntimeException("missing required params hash")
        }
        // verify required params are set
        if (generateShoppingListRequest == null) {
            throw new RuntimeException("missing required params generateShoppingListRequest")
        }

        if (hash != null) {
            queryParams.put("hash", hash)
        }


        contentType = '';
        bodyParams = generateShoppingListRequest


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    GenerateShoppingList200Response.class )

    }

    def getMealPlanTemplate ( String username, Integer id, String hash, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mealplanner/${username}/templates/${id}"

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
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }
        // verify required params are set
        if (hash == null) {
            throw new RuntimeException("missing required params hash")
        }

        if (hash != null) {
            queryParams.put("hash", hash)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    GetMealPlanTemplate200Response.class )

    }

    def getMealPlanTemplates ( String username, String hash, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mealplanner/${username}/templates"

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

        if (hash != null) {
            queryParams.put("hash", hash)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    GetMealPlanTemplates200Response.class )

    }

    def getMealPlanWeek ( String username, String startDate, String hash, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mealplanner/${username}/week/${start-date}"

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
        if (startDate == null) {
            throw new RuntimeException("missing required params startDate")
        }
        // verify required params are set
        if (hash == null) {
            throw new RuntimeException("missing required params hash")
        }

        if (hash != null) {
            queryParams.put("hash", hash)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    GetMealPlanWeek200Response.class )

    }

    def getShoppingList ( String username, String hash, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mealplanner/${username}/shopping-list"

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

        if (hash != null) {
            queryParams.put("hash", hash)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    GetShoppingList200Response.class )

    }

}
