package com.spoonacular;

import com.spoonacular.client.ApiUtils
import java.math.BigDecimal
import com.spoonacular.client.model.InlineObject10
import com.spoonacular.client.model.InlineObject3
import com.spoonacular.client.model.InlineObject4
import com.spoonacular.client.model.InlineObject5
import com.spoonacular.client.model.InlineObject6
import com.spoonacular.client.model.InlineObject7
import com.spoonacular.client.model.InlineObject8
import com.spoonacular.client.model.InlineObject9
import com.spoonacular.client.model.InlineResponse20037
import com.spoonacular.client.model.InlineResponse20038
import com.spoonacular.client.model.InlineResponse20039
import com.spoonacular.client.model.InlineResponse20040
import com.spoonacular.client.model.InlineResponse20041
import com.spoonacular.client.model.InlineResponse20042
import com.spoonacular.client.model.InlineResponse20043

class MealPlanningApi {
    String basePath = "https://api.spoonacular.com"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def addMealPlanTemplate ( String username, String hash, InlineObject6 inlineObject6, Closure onSuccess, Closure onFailure)  {
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
        if (inlineObject6 == null) {
            throw new RuntimeException("missing required params inlineObject6")
        }

        if (hash != null) {
            queryParams.put("hash", hash)
        }


        contentType = '';
        bodyParams = inlineObject6


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    InlineResponse20040.class )

    }

    def addToMealPlan ( String username, String hash, InlineObject4 inlineObject4, Closure onSuccess, Closure onFailure)  {
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
        if (inlineObject4 == null) {
            throw new RuntimeException("missing required params inlineObject4")
        }

        if (hash != null) {
            queryParams.put("hash", hash)
        }


        contentType = '';
        bodyParams = inlineObject4


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    Object.class )

    }

    def addToShoppingList ( String username, String hash, InlineObject9 inlineObject9, Closure onSuccess, Closure onFailure)  {
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
        if (inlineObject9 == null) {
            throw new RuntimeException("missing required params inlineObject9")
        }

        if (hash != null) {
            queryParams.put("hash", hash)
        }


        contentType = '';
        bodyParams = inlineObject9


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    InlineResponse20042.class )

    }

    def clearMealPlanDay ( String username, String date, String hash, InlineObject3 inlineObject3, Closure onSuccess, Closure onFailure)  {
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
        if (inlineObject3 == null) {
            throw new RuntimeException("missing required params inlineObject3")
        }

        if (hash != null) {
            queryParams.put("hash", hash)
        }


        contentType = '';
        bodyParams = inlineObject3


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
                    InlineResponse20043.class )

    }

    def deleteFromMealPlan ( String username, BigDecimal id, String hash, InlineObject5 inlineObject5, Closure onSuccess, Closure onFailure)  {
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
        if (inlineObject5 == null) {
            throw new RuntimeException("missing required params inlineObject5")
        }

        if (hash != null) {
            queryParams.put("hash", hash)
        }


        contentType = '';
        bodyParams = inlineObject5


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "DELETE", "",
                    Object.class )

    }

    def deleteFromShoppingList ( String username, Integer id, String hash, InlineObject10 inlineObject10, Closure onSuccess, Closure onFailure)  {
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
        if (inlineObject10 == null) {
            throw new RuntimeException("missing required params inlineObject10")
        }

        if (hash != null) {
            queryParams.put("hash", hash)
        }


        contentType = '';
        bodyParams = inlineObject10


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "DELETE", "",
                    Object.class )

    }

    def deleteMealPlanTemplate ( String username, Integer id, String hash, InlineObject7 inlineObject7, Closure onSuccess, Closure onFailure)  {
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
        if (inlineObject7 == null) {
            throw new RuntimeException("missing required params inlineObject7")
        }

        if (hash != null) {
            queryParams.put("hash", hash)
        }


        contentType = '';
        bodyParams = inlineObject7


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
                    InlineResponse20037.class )

    }

    def generateShoppingList ( String username, String startDate, String endDate, String hash, InlineObject8 inlineObject8, Closure onSuccess, Closure onFailure)  {
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
        if (inlineObject8 == null) {
            throw new RuntimeException("missing required params inlineObject8")
        }

        if (hash != null) {
            queryParams.put("hash", hash)
        }


        contentType = '';
        bodyParams = inlineObject8


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    InlineResponse20042.class )

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
                    InlineResponse20041.class )

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
                    InlineResponse20039.class )

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
                    InlineResponse20038.class )

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
                    InlineResponse20042.class )

    }

}
