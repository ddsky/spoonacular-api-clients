package com.spoonacular;

import com.spoonacular.client.ApiUtils
import java.math.BigDecimal
import com.spoonacular.client.model.InlineObject8

class DefaultApi {
    String basePath = "https://api.spoonacular.com"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def analyzeARecipeSearchQuery ( String q, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/recipes/queries/analyze"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (q == null) {
            throw new RuntimeException("missing required params q")
        }

        if (q != null) {
            queryParams.put("q", q)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    Object.class )

    }

    def analyzeRecipeInstructions ( String instructions, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/recipes/analyzeInstructions"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (instructions == null) {
            throw new RuntimeException("missing required params instructions")
        }




        contentType = 'application/x-www-form-urlencoded';
        bodyParams = instructions

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    Object.class )

    }

    def autocompleteIngredientSearch ( String query, BigDecimal number, Boolean metaInformation, Boolean intolerances, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/food/ingredients/autocomplete"

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
        if (metaInformation != null) {
            queryParams.put("metaInformation", metaInformation)
        }
        if (intolerances != null) {
            queryParams.put("intolerances", intolerances)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    Object.class )

    }

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
                    Object.class )

    }

    def autocompleteProductSearch ( String query, BigDecimal number, Closure onSuccess, Closure onFailure)  {
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
                    Object.class )

    }

    def autocompleteRecipeSearch ( String query, BigDecimal number, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/recipes/autocomplete"

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
                    Object.class )

    }

    def classifyCuisine ( String title, String ingredientList, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/recipes/cuisine"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (title == null) {
            throw new RuntimeException("missing required params title")
        }
        // verify required params are set
        if (ingredientList == null) {
            throw new RuntimeException("missing required params ingredientList")
        }




        contentType = 'application/x-www-form-urlencoded';
        bodyParams = [:]
        bodyParams.put("title", title)
        bodyParams.put("ingredientList", ingredientList)

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    Object.class )

    }

    def classifyGroceryProduct ( InlineObject8 inlineObject8, String locale, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/food/products/classify"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (inlineObject8 == null) {
            throw new RuntimeException("missing required params inlineObject8")
        }

        if (locale != null) {
            queryParams.put("locale", locale)
        }


        contentType = 'application/json';
        bodyParams = inlineObject8


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    Object.class )

    }

    def classifyGroceryProductBulk ( Object body, String locale, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/food/products/classifyBatch"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (body == null) {
            throw new RuntimeException("missing required params body")
        }

        if (locale != null) {
            queryParams.put("locale", locale)
        }


        contentType = 'application/json';
        bodyParams = body


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    Object.class )

    }

    def convertAmounts ( String ingredientName, BigDecimal sourceAmount, String sourceUnit, String targetUnit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/recipes/convert"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (ingredientName == null) {
            throw new RuntimeException("missing required params ingredientName")
        }
        // verify required params are set
        if (sourceAmount == null) {
            throw new RuntimeException("missing required params sourceAmount")
        }
        // verify required params are set
        if (sourceUnit == null) {
            throw new RuntimeException("missing required params sourceUnit")
        }
        // verify required params are set
        if (targetUnit == null) {
            throw new RuntimeException("missing required params targetUnit")
        }

        if (ingredientName != null) {
            queryParams.put("ingredientName", ingredientName)
        }
        if (sourceAmount != null) {
            queryParams.put("sourceAmount", sourceAmount)
        }
        if (sourceUnit != null) {
            queryParams.put("sourceUnit", sourceUnit)
        }
        if (targetUnit != null) {
            queryParams.put("targetUnit", targetUnit)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    Object.class )

    }

    def createRecipeCard ( String title, File image, String ingredients, String instructions, BigDecimal readyInMinutes, BigDecimal servings, String mask, String backgroundImage, String author, String backgroundColor, String fontColor, String source, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/recipes/visualizeRecipe"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (title == null) {
            throw new RuntimeException("missing required params title")
        }
        // verify required params are set
        if (image == null) {
            throw new RuntimeException("missing required params image")
        }
        // verify required params are set
        if (ingredients == null) {
            throw new RuntimeException("missing required params ingredients")
        }
        // verify required params are set
        if (instructions == null) {
            throw new RuntimeException("missing required params instructions")
        }
        // verify required params are set
        if (readyInMinutes == null) {
            throw new RuntimeException("missing required params readyInMinutes")
        }
        // verify required params are set
        if (servings == null) {
            throw new RuntimeException("missing required params servings")
        }
        // verify required params are set
        if (mask == null) {
            throw new RuntimeException("missing required params mask")
        }
        // verify required params are set
        if (backgroundImage == null) {
            throw new RuntimeException("missing required params backgroundImage")
        }




        contentType = 'multipart/form-data';
        bodyParams = [:]
        bodyParams.put("title", title)
        bodyParams.put("image", image)
        bodyParams.put("ingredients", ingredients)
        bodyParams.put("instructions", instructions)
        bodyParams.put("readyInMinutes", readyInMinutes)
        bodyParams.put("servings", servings)
        bodyParams.put("mask", mask)
        bodyParams.put("backgroundImage", backgroundImage)
        bodyParams.put("author", author)
        bodyParams.put("backgroundColor", backgroundColor)
        bodyParams.put("fontColor", fontColor)
        bodyParams.put("source", source)

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    Object.class )

    }

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
                    Object.class )

    }

    def extractRecipeFromWebsite ( String url, Boolean forceExtraction, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/recipes/extract"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (url == null) {
            throw new RuntimeException("missing required params url")
        }

        if (url != null) {
            queryParams.put("url", url)
        }
        if (forceExtraction != null) {
            queryParams.put("forceExtraction", forceExtraction)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    Object.class )

    }

    def generateMealPlan ( String timeFrame, BigDecimal targetCalories, String diet, String exclude, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/recipes/mealplans/generate"

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
                    Object.class )

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
                    Object.class )

    }

    def getAnalyzedRecipeInstructions ( BigDecimal id, Boolean stepBreakdown, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/recipes/${id}/analyzedInstructions"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }

        if (stepBreakdown != null) {
            queryParams.put("stepBreakdown", stepBreakdown)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    Object.class )

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
                    Object.class )

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
                    Object.class )

    }

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
                    Object.class )

    }

    def getFoodInformation ( BigDecimal id, BigDecimal amount, String unit, Closure onSuccess, Closure onFailure)  {
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
                    Object.class )

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
                    Object.class )

    }

    def getIngredientSubstitutesByID ( BigDecimal id, Closure onSuccess, Closure onFailure)  {
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
                    Object.class )

    }

    def getMenuItemInformation ( BigDecimal id, Closure onSuccess, Closure onFailure)  {
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
                    Object.class )

    }

    def getProductInformation ( BigDecimal id, Closure onSuccess, Closure onFailure)  {
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
                    Object.class )

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
                    Object.class )

    }

    def getRandomRecipes ( Boolean limitLicense, String tags, BigDecimal number, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/recipes/random"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (limitLicense != null) {
            queryParams.put("limitLicense", limitLicense)
        }
        if (tags != null) {
            queryParams.put("tags", tags)
        }
        if (number != null) {
            queryParams.put("number", number)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    Object.class )

    }

    def getRecipeEquipmentByID ( BigDecimal id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/recipes/${id}/equipmentWidget.json"

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

    def getRecipeInformation ( BigDecimal id, Boolean includeNutrition, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/recipes/${id}/information"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }

        if (includeNutrition != null) {
            queryParams.put("includeNutrition", includeNutrition)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    Object.class )

    }

    def getRecipeInformationBulk ( String ids, Boolean includeNutrition, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/recipes/informationBulk"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (ids == null) {
            throw new RuntimeException("missing required params ids")
        }

        if (ids != null) {
            queryParams.put("ids", ids)
        }
        if (includeNutrition != null) {
            queryParams.put("includeNutrition", includeNutrition)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    Object.class )

    }

    def getRecipeIngredientsByID ( BigDecimal id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/recipes/${id}/ingredientWidget.json"

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

    def getRecipeNutritionByID ( BigDecimal id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/recipes/${id}/nutritionWidget.json"

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

    def getRecipePriceBreakdownByID ( BigDecimal id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/recipes/${id}/priceBreakdownWidget.json"

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

    def getSimilarRecipes ( BigDecimal id, BigDecimal number, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/recipes/${id}/similar"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }

        if (number != null) {
            queryParams.put("number", number)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    Object.class )

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
                    Object.class )

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
                    Object.class )

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
                    Object.class )

    }

    def guessNutritionByDishName ( String title, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/recipes/guessNutrition"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (title == null) {
            throw new RuntimeException("missing required params title")
        }

        if (title != null) {
            queryParams.put("title", title)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    Object.class )

    }

    def mapIngredientsToGroceryProducts ( Object body, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/food/ingredients/map"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (body == null) {
            throw new RuntimeException("missing required params body")
        }



        contentType = 'application/json';
        bodyParams = body


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    Object.class )

    }

    def parseIngredients ( String ingredientList, BigDecimal servings, Boolean includeNutrition, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/recipes/parseIngredients"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (ingredientList == null) {
            throw new RuntimeException("missing required params ingredientList")
        }
        // verify required params are set
        if (servings == null) {
            throw new RuntimeException("missing required params servings")
        }




        contentType = 'application/x-www-form-urlencoded';
        bodyParams = [:]
        bodyParams.put("ingredientList", ingredientList)
        bodyParams.put("servings", servings)
        bodyParams.put("includeNutrition", includeNutrition)

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    Object.class )

    }

    def quickAnswer ( String q, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/recipes/quickAnswer"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (q == null) {
            throw new RuntimeException("missing required params q")
        }

        if (q != null) {
            queryParams.put("q", q)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    Object.class )

    }

    def searchFoodVideos ( String query, String type, String cuisine, String diet, String includeIngredients, String excludeIngredients, BigDecimal minLength, BigDecimal maxLength, BigDecimal offset, BigDecimal number, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/food/videos/search"

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
                    Object.class )

    }

    def searchGroceryProducts ( String query, BigDecimal minCalories, BigDecimal maxCalories, BigDecimal minCarbs, BigDecimal maxCarbs, BigDecimal minProtein, BigDecimal maxProtein, BigDecimal minFat, BigDecimal maxFat, BigDecimal offset, BigDecimal number, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/food/products/search"

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
        if (offset != null) {
            queryParams.put("offset", offset)
        }
        if (number != null) {
            queryParams.put("number", number)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    Object.class )

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
                    Object.class )

    }

    def searchMenuItems ( String query, BigDecimal minCalories, BigDecimal maxCalories, BigDecimal minCarbs, BigDecimal maxCarbs, BigDecimal minProtein, BigDecimal maxProtein, BigDecimal minFat, BigDecimal maxFat, BigDecimal offset, BigDecimal number, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/food/menuItems/search"

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
        if (offset != null) {
            queryParams.put("offset", offset)
        }
        if (number != null) {
            queryParams.put("number", number)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    Object.class )

    }

    def searchRecipes ( String query, String cuisine, String diet, String excludeIngredients, String intolerances, BigDecimal offset, BigDecimal number, Boolean limitLicense, Boolean instructionsRequired, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/recipes/search"

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
        if (cuisine != null) {
            queryParams.put("cuisine", cuisine)
        }
        if (diet != null) {
            queryParams.put("diet", diet)
        }
        if (excludeIngredients != null) {
            queryParams.put("excludeIngredients", excludeIngredients)
        }
        if (intolerances != null) {
            queryParams.put("intolerances", intolerances)
        }
        if (offset != null) {
            queryParams.put("offset", offset)
        }
        if (number != null) {
            queryParams.put("number", number)
        }
        if (limitLicense != null) {
            queryParams.put("limitLicense", limitLicense)
        }
        if (instructionsRequired != null) {
            queryParams.put("instructionsRequired", instructionsRequired)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    Object.class )

    }

    def searchRecipesByIngredients ( String ingredients, BigDecimal number, Boolean limitLicense, BigDecimal ranking, Boolean ignorePantry, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/recipes/findByIngredients"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (ingredients == null) {
            throw new RuntimeException("missing required params ingredients")
        }

        if (ingredients != null) {
            queryParams.put("ingredients", ingredients)
        }
        if (number != null) {
            queryParams.put("number", number)
        }
        if (limitLicense != null) {
            queryParams.put("limitLicense", limitLicense)
        }
        if (ranking != null) {
            queryParams.put("ranking", ranking)
        }
        if (ignorePantry != null) {
            queryParams.put("ignorePantry", ignorePantry)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    Object.class )

    }

    def searchRecipesByNutrients ( BigDecimal minCarbs, BigDecimal maxCarbs, BigDecimal minProtein, BigDecimal maxProtein, BigDecimal minCalories, BigDecimal maxCalories, BigDecimal minFat, BigDecimal maxFat, BigDecimal minAlcohol, BigDecimal maxAlcohol, BigDecimal minCaffeine, BigDecimal maxCaffeine, BigDecimal minCopper, BigDecimal maxCopper, BigDecimal minCalcium, BigDecimal maxCalcium, BigDecimal minCholine, BigDecimal maxCholine, BigDecimal minCholesterol, BigDecimal maxCholesterol, BigDecimal minFluoride, BigDecimal maxFluoride, BigDecimal minSaturatedFat, BigDecimal maxSaturatedFat, BigDecimal minVitaminA, BigDecimal maxVitaminA, BigDecimal minVitaminC, BigDecimal maxVitaminC, BigDecimal minVitaminD, BigDecimal maxVitaminD, BigDecimal minVitaminE, BigDecimal maxVitaminE, BigDecimal minVitaminK, BigDecimal maxVitaminK, BigDecimal minVitaminB1, BigDecimal maxVitaminB1, BigDecimal minVitaminB2, BigDecimal maxVitaminB2, BigDecimal minVitaminB5, BigDecimal maxVitaminB5, BigDecimal minVitaminB3, BigDecimal maxVitaminB3, BigDecimal minVitaminB6, BigDecimal maxVitaminB6, BigDecimal minVitaminB12, BigDecimal maxVitaminB12, BigDecimal minFiber, BigDecimal maxFiber, BigDecimal minFolate, BigDecimal maxFolate, BigDecimal minFolicAcid, BigDecimal maxFolicAcid, BigDecimal minIodine, BigDecimal maxIodine, BigDecimal minIron, BigDecimal maxIron, BigDecimal minMagnesium, BigDecimal maxMagnesium, BigDecimal minManganese, BigDecimal maxManganese, BigDecimal minPhosphorus, BigDecimal maxPhosphorus, BigDecimal minPotassium, BigDecimal maxPotassium, BigDecimal minSelenium, BigDecimal maxSelenium, BigDecimal minSodium, BigDecimal maxSodium, BigDecimal minSugar, BigDecimal maxSugar, BigDecimal minZinc, BigDecimal maxZinc, BigDecimal offset, BigDecimal number, Boolean random, Boolean limitLicense, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/recipes/findByNutrients"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


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
        if (minCalories != null) {
            queryParams.put("minCalories", minCalories)
        }
        if (maxCalories != null) {
            queryParams.put("maxCalories", maxCalories)
        }
        if (minFat != null) {
            queryParams.put("minFat", minFat)
        }
        if (maxFat != null) {
            queryParams.put("maxFat", maxFat)
        }
        if (minAlcohol != null) {
            queryParams.put("minAlcohol", minAlcohol)
        }
        if (maxAlcohol != null) {
            queryParams.put("maxAlcohol", maxAlcohol)
        }
        if (minCaffeine != null) {
            queryParams.put("minCaffeine", minCaffeine)
        }
        if (maxCaffeine != null) {
            queryParams.put("maxCaffeine", maxCaffeine)
        }
        if (minCopper != null) {
            queryParams.put("minCopper", minCopper)
        }
        if (maxCopper != null) {
            queryParams.put("maxCopper", maxCopper)
        }
        if (minCalcium != null) {
            queryParams.put("minCalcium", minCalcium)
        }
        if (maxCalcium != null) {
            queryParams.put("maxCalcium", maxCalcium)
        }
        if (minCholine != null) {
            queryParams.put("minCholine", minCholine)
        }
        if (maxCholine != null) {
            queryParams.put("maxCholine", maxCholine)
        }
        if (minCholesterol != null) {
            queryParams.put("minCholesterol", minCholesterol)
        }
        if (maxCholesterol != null) {
            queryParams.put("maxCholesterol", maxCholesterol)
        }
        if (minFluoride != null) {
            queryParams.put("minFluoride", minFluoride)
        }
        if (maxFluoride != null) {
            queryParams.put("maxFluoride", maxFluoride)
        }
        if (minSaturatedFat != null) {
            queryParams.put("minSaturatedFat", minSaturatedFat)
        }
        if (maxSaturatedFat != null) {
            queryParams.put("maxSaturatedFat", maxSaturatedFat)
        }
        if (minVitaminA != null) {
            queryParams.put("minVitaminA", minVitaminA)
        }
        if (maxVitaminA != null) {
            queryParams.put("maxVitaminA", maxVitaminA)
        }
        if (minVitaminC != null) {
            queryParams.put("minVitaminC", minVitaminC)
        }
        if (maxVitaminC != null) {
            queryParams.put("maxVitaminC", maxVitaminC)
        }
        if (minVitaminD != null) {
            queryParams.put("minVitaminD", minVitaminD)
        }
        if (maxVitaminD != null) {
            queryParams.put("maxVitaminD", maxVitaminD)
        }
        if (minVitaminE != null) {
            queryParams.put("minVitaminE", minVitaminE)
        }
        if (maxVitaminE != null) {
            queryParams.put("maxVitaminE", maxVitaminE)
        }
        if (minVitaminK != null) {
            queryParams.put("minVitaminK", minVitaminK)
        }
        if (maxVitaminK != null) {
            queryParams.put("maxVitaminK", maxVitaminK)
        }
        if (minVitaminB1 != null) {
            queryParams.put("minVitaminB1", minVitaminB1)
        }
        if (maxVitaminB1 != null) {
            queryParams.put("maxVitaminB1", maxVitaminB1)
        }
        if (minVitaminB2 != null) {
            queryParams.put("minVitaminB2", minVitaminB2)
        }
        if (maxVitaminB2 != null) {
            queryParams.put("maxVitaminB2", maxVitaminB2)
        }
        if (minVitaminB5 != null) {
            queryParams.put("minVitaminB5", minVitaminB5)
        }
        if (maxVitaminB5 != null) {
            queryParams.put("maxVitaminB5", maxVitaminB5)
        }
        if (minVitaminB3 != null) {
            queryParams.put("minVitaminB3", minVitaminB3)
        }
        if (maxVitaminB3 != null) {
            queryParams.put("maxVitaminB3", maxVitaminB3)
        }
        if (minVitaminB6 != null) {
            queryParams.put("minVitaminB6", minVitaminB6)
        }
        if (maxVitaminB6 != null) {
            queryParams.put("maxVitaminB6", maxVitaminB6)
        }
        if (minVitaminB12 != null) {
            queryParams.put("minVitaminB12", minVitaminB12)
        }
        if (maxVitaminB12 != null) {
            queryParams.put("maxVitaminB12", maxVitaminB12)
        }
        if (minFiber != null) {
            queryParams.put("minFiber", minFiber)
        }
        if (maxFiber != null) {
            queryParams.put("maxFiber", maxFiber)
        }
        if (minFolate != null) {
            queryParams.put("minFolate", minFolate)
        }
        if (maxFolate != null) {
            queryParams.put("maxFolate", maxFolate)
        }
        if (minFolicAcid != null) {
            queryParams.put("minFolicAcid", minFolicAcid)
        }
        if (maxFolicAcid != null) {
            queryParams.put("maxFolicAcid", maxFolicAcid)
        }
        if (minIodine != null) {
            queryParams.put("minIodine", minIodine)
        }
        if (maxIodine != null) {
            queryParams.put("maxIodine", maxIodine)
        }
        if (minIron != null) {
            queryParams.put("minIron", minIron)
        }
        if (maxIron != null) {
            queryParams.put("maxIron", maxIron)
        }
        if (minMagnesium != null) {
            queryParams.put("minMagnesium", minMagnesium)
        }
        if (maxMagnesium != null) {
            queryParams.put("maxMagnesium", maxMagnesium)
        }
        if (minManganese != null) {
            queryParams.put("minManganese", minManganese)
        }
        if (maxManganese != null) {
            queryParams.put("maxManganese", maxManganese)
        }
        if (minPhosphorus != null) {
            queryParams.put("minPhosphorus", minPhosphorus)
        }
        if (maxPhosphorus != null) {
            queryParams.put("maxPhosphorus", maxPhosphorus)
        }
        if (minPotassium != null) {
            queryParams.put("minPotassium", minPotassium)
        }
        if (maxPotassium != null) {
            queryParams.put("maxPotassium", maxPotassium)
        }
        if (minSelenium != null) {
            queryParams.put("minSelenium", minSelenium)
        }
        if (maxSelenium != null) {
            queryParams.put("maxSelenium", maxSelenium)
        }
        if (minSodium != null) {
            queryParams.put("minSodium", minSodium)
        }
        if (maxSodium != null) {
            queryParams.put("maxSodium", maxSodium)
        }
        if (minSugar != null) {
            queryParams.put("minSugar", minSugar)
        }
        if (maxSugar != null) {
            queryParams.put("maxSugar", maxSugar)
        }
        if (minZinc != null) {
            queryParams.put("minZinc", minZinc)
        }
        if (maxZinc != null) {
            queryParams.put("maxZinc", maxZinc)
        }
        if (offset != null) {
            queryParams.put("offset", offset)
        }
        if (number != null) {
            queryParams.put("number", number)
        }
        if (random != null) {
            queryParams.put("random", random)
        }
        if (limitLicense != null) {
            queryParams.put("limitLicense", limitLicense)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    Object.class )

    }

    def searchRecipesComplex ( String query, String cuisine, String excludeCuisine, String diet, String intolerances, String equipment, String includeIngredients, String excludeIngredients, String type, Boolean instructionsRequired, Boolean fillIngredients, Boolean addRecipeInformation, String author, String tags, String titleMatch, String sort, String sortDirection, BigDecimal minCarbs, BigDecimal maxCarbs, BigDecimal minProtein, BigDecimal maxProtein, BigDecimal minCalories, BigDecimal maxCalories, BigDecimal minFat, BigDecimal maxFat, BigDecimal minAlcohol, BigDecimal maxAlcohol, BigDecimal minCaffeine, BigDecimal maxCaffeine, BigDecimal minCopper, BigDecimal maxCopper, BigDecimal minCalcium, BigDecimal maxCalcium, BigDecimal minCholine, BigDecimal maxCholine, BigDecimal minCholesterol, BigDecimal maxCholesterol, BigDecimal minFluoride, BigDecimal maxFluoride, BigDecimal minSaturatedFat, BigDecimal maxSaturatedFat, BigDecimal minVitaminA, BigDecimal maxVitaminA, BigDecimal minVitaminC, BigDecimal maxVitaminC, BigDecimal minVitaminD, BigDecimal maxVitaminD, BigDecimal minVitaminE, BigDecimal maxVitaminE, BigDecimal minVitaminK, BigDecimal maxVitaminK, BigDecimal minVitaminB1, BigDecimal maxVitaminB1, BigDecimal minVitaminB2, BigDecimal maxVitaminB2, BigDecimal minVitaminB5, BigDecimal maxVitaminB5, BigDecimal minVitaminB3, BigDecimal maxVitaminB3, BigDecimal minVitaminB6, BigDecimal maxVitaminB6, BigDecimal minVitaminB12, BigDecimal maxVitaminB12, BigDecimal minFiber, BigDecimal maxFiber, BigDecimal minFolate, BigDecimal maxFolate, BigDecimal minFolicAcid, BigDecimal maxFolicAcid, BigDecimal minIodine, BigDecimal maxIodine, BigDecimal minIron, BigDecimal maxIron, BigDecimal minMagnesium, BigDecimal maxMagnesium, BigDecimal minManganese, BigDecimal maxManganese, BigDecimal minPhosphorus, BigDecimal maxPhosphorus, BigDecimal minPotassium, BigDecimal maxPotassium, BigDecimal minSelenium, BigDecimal maxSelenium, BigDecimal minSodium, BigDecimal maxSodium, BigDecimal minSugar, BigDecimal maxSugar, BigDecimal minZinc, BigDecimal maxZinc, BigDecimal offset, BigDecimal number, Boolean limitLicense, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/recipes/complexSearch"

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
        if (cuisine != null) {
            queryParams.put("cuisine", cuisine)
        }
        if (excludeCuisine != null) {
            queryParams.put("excludeCuisine", excludeCuisine)
        }
        if (diet != null) {
            queryParams.put("diet", diet)
        }
        if (intolerances != null) {
            queryParams.put("intolerances", intolerances)
        }
        if (equipment != null) {
            queryParams.put("equipment", equipment)
        }
        if (includeIngredients != null) {
            queryParams.put("includeIngredients", includeIngredients)
        }
        if (excludeIngredients != null) {
            queryParams.put("excludeIngredients", excludeIngredients)
        }
        if (type != null) {
            queryParams.put("type", type)
        }
        if (instructionsRequired != null) {
            queryParams.put("instructionsRequired", instructionsRequired)
        }
        if (fillIngredients != null) {
            queryParams.put("fillIngredients", fillIngredients)
        }
        if (addRecipeInformation != null) {
            queryParams.put("addRecipeInformation", addRecipeInformation)
        }
        if (author != null) {
            queryParams.put("author", author)
        }
        if (tags != null) {
            queryParams.put("tags", tags)
        }
        if (titleMatch != null) {
            queryParams.put("titleMatch", titleMatch)
        }
        if (sort != null) {
            queryParams.put("sort", sort)
        }
        if (sortDirection != null) {
            queryParams.put("sortDirection", sortDirection)
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
        if (minCalories != null) {
            queryParams.put("minCalories", minCalories)
        }
        if (maxCalories != null) {
            queryParams.put("maxCalories", maxCalories)
        }
        if (minFat != null) {
            queryParams.put("minFat", minFat)
        }
        if (maxFat != null) {
            queryParams.put("maxFat", maxFat)
        }
        if (minAlcohol != null) {
            queryParams.put("minAlcohol", minAlcohol)
        }
        if (maxAlcohol != null) {
            queryParams.put("maxAlcohol", maxAlcohol)
        }
        if (minCaffeine != null) {
            queryParams.put("minCaffeine", minCaffeine)
        }
        if (maxCaffeine != null) {
            queryParams.put("maxCaffeine", maxCaffeine)
        }
        if (minCopper != null) {
            queryParams.put("minCopper", minCopper)
        }
        if (maxCopper != null) {
            queryParams.put("maxCopper", maxCopper)
        }
        if (minCalcium != null) {
            queryParams.put("minCalcium", minCalcium)
        }
        if (maxCalcium != null) {
            queryParams.put("maxCalcium", maxCalcium)
        }
        if (minCholine != null) {
            queryParams.put("minCholine", minCholine)
        }
        if (maxCholine != null) {
            queryParams.put("maxCholine", maxCholine)
        }
        if (minCholesterol != null) {
            queryParams.put("minCholesterol", minCholesterol)
        }
        if (maxCholesterol != null) {
            queryParams.put("maxCholesterol", maxCholesterol)
        }
        if (minFluoride != null) {
            queryParams.put("minFluoride", minFluoride)
        }
        if (maxFluoride != null) {
            queryParams.put("maxFluoride", maxFluoride)
        }
        if (minSaturatedFat != null) {
            queryParams.put("minSaturatedFat", minSaturatedFat)
        }
        if (maxSaturatedFat != null) {
            queryParams.put("maxSaturatedFat", maxSaturatedFat)
        }
        if (minVitaminA != null) {
            queryParams.put("minVitaminA", minVitaminA)
        }
        if (maxVitaminA != null) {
            queryParams.put("maxVitaminA", maxVitaminA)
        }
        if (minVitaminC != null) {
            queryParams.put("minVitaminC", minVitaminC)
        }
        if (maxVitaminC != null) {
            queryParams.put("maxVitaminC", maxVitaminC)
        }
        if (minVitaminD != null) {
            queryParams.put("minVitaminD", minVitaminD)
        }
        if (maxVitaminD != null) {
            queryParams.put("maxVitaminD", maxVitaminD)
        }
        if (minVitaminE != null) {
            queryParams.put("minVitaminE", minVitaminE)
        }
        if (maxVitaminE != null) {
            queryParams.put("maxVitaminE", maxVitaminE)
        }
        if (minVitaminK != null) {
            queryParams.put("minVitaminK", minVitaminK)
        }
        if (maxVitaminK != null) {
            queryParams.put("maxVitaminK", maxVitaminK)
        }
        if (minVitaminB1 != null) {
            queryParams.put("minVitaminB1", minVitaminB1)
        }
        if (maxVitaminB1 != null) {
            queryParams.put("maxVitaminB1", maxVitaminB1)
        }
        if (minVitaminB2 != null) {
            queryParams.put("minVitaminB2", minVitaminB2)
        }
        if (maxVitaminB2 != null) {
            queryParams.put("maxVitaminB2", maxVitaminB2)
        }
        if (minVitaminB5 != null) {
            queryParams.put("minVitaminB5", minVitaminB5)
        }
        if (maxVitaminB5 != null) {
            queryParams.put("maxVitaminB5", maxVitaminB5)
        }
        if (minVitaminB3 != null) {
            queryParams.put("minVitaminB3", minVitaminB3)
        }
        if (maxVitaminB3 != null) {
            queryParams.put("maxVitaminB3", maxVitaminB3)
        }
        if (minVitaminB6 != null) {
            queryParams.put("minVitaminB6", minVitaminB6)
        }
        if (maxVitaminB6 != null) {
            queryParams.put("maxVitaminB6", maxVitaminB6)
        }
        if (minVitaminB12 != null) {
            queryParams.put("minVitaminB12", minVitaminB12)
        }
        if (maxVitaminB12 != null) {
            queryParams.put("maxVitaminB12", maxVitaminB12)
        }
        if (minFiber != null) {
            queryParams.put("minFiber", minFiber)
        }
        if (maxFiber != null) {
            queryParams.put("maxFiber", maxFiber)
        }
        if (minFolate != null) {
            queryParams.put("minFolate", minFolate)
        }
        if (maxFolate != null) {
            queryParams.put("maxFolate", maxFolate)
        }
        if (minFolicAcid != null) {
            queryParams.put("minFolicAcid", minFolicAcid)
        }
        if (maxFolicAcid != null) {
            queryParams.put("maxFolicAcid", maxFolicAcid)
        }
        if (minIodine != null) {
            queryParams.put("minIodine", minIodine)
        }
        if (maxIodine != null) {
            queryParams.put("maxIodine", maxIodine)
        }
        if (minIron != null) {
            queryParams.put("minIron", minIron)
        }
        if (maxIron != null) {
            queryParams.put("maxIron", maxIron)
        }
        if (minMagnesium != null) {
            queryParams.put("minMagnesium", minMagnesium)
        }
        if (maxMagnesium != null) {
            queryParams.put("maxMagnesium", maxMagnesium)
        }
        if (minManganese != null) {
            queryParams.put("minManganese", minManganese)
        }
        if (maxManganese != null) {
            queryParams.put("maxManganese", maxManganese)
        }
        if (minPhosphorus != null) {
            queryParams.put("minPhosphorus", minPhosphorus)
        }
        if (maxPhosphorus != null) {
            queryParams.put("maxPhosphorus", maxPhosphorus)
        }
        if (minPotassium != null) {
            queryParams.put("minPotassium", minPotassium)
        }
        if (maxPotassium != null) {
            queryParams.put("maxPotassium", maxPotassium)
        }
        if (minSelenium != null) {
            queryParams.put("minSelenium", minSelenium)
        }
        if (maxSelenium != null) {
            queryParams.put("maxSelenium", maxSelenium)
        }
        if (minSodium != null) {
            queryParams.put("minSodium", minSodium)
        }
        if (maxSodium != null) {
            queryParams.put("maxSodium", maxSodium)
        }
        if (minSugar != null) {
            queryParams.put("minSugar", minSugar)
        }
        if (maxSugar != null) {
            queryParams.put("maxSugar", maxSugar)
        }
        if (minZinc != null) {
            queryParams.put("minZinc", minZinc)
        }
        if (maxZinc != null) {
            queryParams.put("maxZinc", maxZinc)
        }
        if (offset != null) {
            queryParams.put("offset", offset)
        }
        if (number != null) {
            queryParams.put("number", number)
        }
        if (limitLicense != null) {
            queryParams.put("limitLicense", limitLicense)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    Object.class )

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
                    Object.class )

    }

    def summarizeRecipe ( BigDecimal id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/recipes/${id}/summary"

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
                    Object.class )

    }

    def visualizeEquipment ( String ingredientList, BigDecimal servings, String view, Boolean defaultCss, Boolean showBacklink, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/recipes/visualizeEquipment"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (ingredientList == null) {
            throw new RuntimeException("missing required params ingredientList")
        }
        // verify required params are set
        if (servings == null) {
            throw new RuntimeException("missing required params servings")
        }




        contentType = 'application/x-www-form-urlencoded';
        bodyParams = [:]
        bodyParams.put("ingredientList", ingredientList)
        bodyParams.put("servings", servings)
        bodyParams.put("view", view)
        bodyParams.put("defaultCss", defaultCss)
        bodyParams.put("showBacklink", showBacklink)

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    String.class )

    }

    def visualizeIngredients ( String ingredientList, BigDecimal servings, String measure, String view, Boolean defaultCss, Boolean showBacklink, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/recipes/visualizeIngredients"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (ingredientList == null) {
            throw new RuntimeException("missing required params ingredientList")
        }
        // verify required params are set
        if (servings == null) {
            throw new RuntimeException("missing required params servings")
        }




        contentType = 'application/x-www-form-urlencoded';
        bodyParams = [:]
        bodyParams.put("ingredientList", ingredientList)
        bodyParams.put("servings", servings)
        bodyParams.put("measure", measure)
        bodyParams.put("view", view)
        bodyParams.put("defaultCss", defaultCss)
        bodyParams.put("showBacklink", showBacklink)

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    String.class )

    }

    def visualizeMenuItemNutritionByID ( BigDecimal id, Boolean defaultCss, Closure onSuccess, Closure onFailure)  {
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




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    String.class )

    }

    def visualizePriceBreakdown ( String ingredientList, BigDecimal servings, BigDecimal mode, Boolean defaultCss, Boolean showBacklink, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/recipes/visualizePriceEstimator"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (ingredientList == null) {
            throw new RuntimeException("missing required params ingredientList")
        }
        // verify required params are set
        if (servings == null) {
            throw new RuntimeException("missing required params servings")
        }




        contentType = 'application/x-www-form-urlencoded';
        bodyParams = [:]
        bodyParams.put("ingredientList", ingredientList)
        bodyParams.put("servings", servings)
        bodyParams.put("mode", mode)
        bodyParams.put("defaultCss", defaultCss)
        bodyParams.put("showBacklink", showBacklink)

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    String.class )

    }

    def visualizeProductNutritionByID ( BigDecimal id, Boolean defaultCss, Closure onSuccess, Closure onFailure)  {
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

    def visualizeRecipeEquipmentByID ( BigDecimal id, Boolean defaultCss, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/recipes/${id}/equipmentWidget"

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

    def visualizeRecipeIngredientsByID ( BigDecimal id, Boolean defaultCss, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/recipes/${id}/ingredientWidget"

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

    def visualizeRecipeNutrition ( String ingredientList, BigDecimal servings, Boolean defaultCss, Boolean showBacklink, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/recipes/visualizeNutrition"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (ingredientList == null) {
            throw new RuntimeException("missing required params ingredientList")
        }
        // verify required params are set
        if (servings == null) {
            throw new RuntimeException("missing required params servings")
        }




        contentType = 'application/x-www-form-urlencoded';
        bodyParams = [:]
        bodyParams.put("ingredientList", ingredientList)
        bodyParams.put("servings", servings)
        bodyParams.put("defaultCss", defaultCss)
        bodyParams.put("showBacklink", showBacklink)

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    String.class )

    }

    def visualizeRecipeNutritionByID ( BigDecimal id, Boolean defaultCss, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/recipes/${id}/nutritionWidget"

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

    def visualizeRecipePriceBreakdownByID ( BigDecimal id, Boolean defaultCss, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/recipes/${id}/priceBreakdownWidget"

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
