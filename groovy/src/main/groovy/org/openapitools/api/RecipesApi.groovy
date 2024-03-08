package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.AnalyzeARecipeSearchQuery200Response
import org.openapitools.model.AnalyzeRecipeInstructions200Response
import org.openapitools.model.AutocompleteRecipeSearch200ResponseInner
import java.math.BigDecimal
import org.openapitools.model.ClassifyCuisine200Response
import org.openapitools.model.ComputeGlycemicLoad200Response
import org.openapitools.model.ComputeGlycemicLoadRequest
import org.openapitools.model.ConvertAmounts200Response
import org.openapitools.model.CreateRecipeCard200Response
import org.openapitools.model.GetAnalyzedRecipeInstructions200Response
import org.openapitools.model.GetRandomRecipes200Response
import org.openapitools.model.GetRecipeEquipmentByID200Response
import org.openapitools.model.GetRecipeInformation200Response
import org.openapitools.model.GetRecipeInformationBulk200ResponseInner
import org.openapitools.model.GetRecipeIngredientsByID200Response
import org.openapitools.model.GetRecipeNutritionWidgetByID200Response
import org.openapitools.model.GetRecipePriceBreakdownByID200Response
import org.openapitools.model.GetRecipeTasteByID200Response
import org.openapitools.model.GetSimilarRecipes200ResponseInner
import org.openapitools.model.GuessNutritionByDishName200Response
import org.openapitools.model.ParseIngredients200ResponseInner
import org.openapitools.model.QuickAnswer200Response
import org.openapitools.model.SearchRecipes200Response
import org.openapitools.model.SearchRecipesByIngredients200ResponseInner
import org.openapitools.model.SearchRecipesByNutrients200ResponseInner
import java.util.Set
import org.openapitools.model.SummarizeRecipe200Response

class RecipesApi {
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
                    AnalyzeARecipeSearchQuery200Response.class )

    }

    def analyzeRecipeInstructions ( String contentType, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/recipes/analyzeInstructions"

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
                    AnalyzeRecipeInstructions200Response.class )

    }

    def autocompleteRecipeSearch ( String query, Integer number, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/recipes/autocomplete"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (query != null) {
            queryParams.put("query", query)
        }
        if (number != null) {
            queryParams.put("number", number)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "set",
                    AutocompleteRecipeSearch200ResponseInner.class )

    }

    def classifyCuisine ( String contentType, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/recipes/cuisine"

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
                    ClassifyCuisine200Response.class )

    }

    def computeGlycemicLoad ( ComputeGlycemicLoadRequest computeGlycemicLoadRequest, String language, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/food/ingredients/glycemicLoad"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (computeGlycemicLoadRequest == null) {
            throw new RuntimeException("missing required params computeGlycemicLoadRequest")
        }

        if (language != null) {
            queryParams.put("language", language)
        }


        contentType = 'application/json';
        bodyParams = computeGlycemicLoadRequest


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    ComputeGlycemicLoad200Response.class )

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
                    ConvertAmounts200Response.class )

    }

    def createRecipeCard ( String contentType, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/recipes/visualizeRecipe"

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
                    CreateRecipeCard200Response.class )

    }

    def equipmentByIDImage ( BigDecimal id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/recipes/${id}/equipmentWidget.png"

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

    def extractRecipeFromWebsite ( String url, Boolean forceExtraction, Boolean analyze, Boolean includeNutrition, Boolean includeTaste, Closure onSuccess, Closure onFailure)  {
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
        if (analyze != null) {
            queryParams.put("analyze", analyze)
        }
        if (includeNutrition != null) {
            queryParams.put("includeNutrition", includeNutrition)
        }
        if (includeTaste != null) {
            queryParams.put("includeTaste", includeTaste)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    GetRecipeInformation200Response.class )

    }

    def getAnalyzedRecipeInstructions ( Integer id, Boolean stepBreakdown, Closure onSuccess, Closure onFailure)  {
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
                    GetAnalyzedRecipeInstructions200Response.class )

    }

    def getRandomRecipes ( Boolean limitLicense, String tags, Integer number, Closure onSuccess, Closure onFailure)  {
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
                    GetRandomRecipes200Response.class )

    }

    def getRecipeEquipmentByID ( Integer id, Closure onSuccess, Closure onFailure)  {
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
                    GetRecipeEquipmentByID200Response.class )

    }

    def getRecipeInformation ( Integer id, Boolean includeNutrition, Closure onSuccess, Closure onFailure)  {
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
                    GetRecipeInformation200Response.class )

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
                    "GET", "set",
                    GetRecipeInformationBulk200ResponseInner.class )

    }

    def getRecipeIngredientsByID ( Integer id, Closure onSuccess, Closure onFailure)  {
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
                    GetRecipeIngredientsByID200Response.class )

    }

    def getRecipeNutritionWidgetByID ( Integer id, Closure onSuccess, Closure onFailure)  {
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
                    GetRecipeNutritionWidgetByID200Response.class )

    }

    def getRecipePriceBreakdownByID ( Integer id, Closure onSuccess, Closure onFailure)  {
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
                    GetRecipePriceBreakdownByID200Response.class )

    }

    def getRecipeTasteByID ( Integer id, Boolean normalize, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/recipes/${id}/tasteWidget.json"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }

        if (normalize != null) {
            queryParams.put("normalize", normalize)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    GetRecipeTasteByID200Response.class )

    }

    def getSimilarRecipes ( Integer id, Integer number, Boolean limitLicense, Closure onSuccess, Closure onFailure)  {
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
        if (limitLicense != null) {
            queryParams.put("limitLicense", limitLicense)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "set",
                    GetSimilarRecipes200ResponseInner.class )

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
                    GuessNutritionByDishName200Response.class )

    }

    def ingredientsByIDImage ( BigDecimal id, String measure, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/recipes/${id}/ingredientWidget.png"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }

        if (measure != null) {
            queryParams.put("measure", measure)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    Object.class )

    }

    def parseIngredients ( String contentType, String language, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/recipes/parseIngredients"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (language != null) {
            queryParams.put("language", language)
        }

        if (contentType != null) {
            headerParams.put("Content-Type", contentType)
        }



        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "set",
                    ParseIngredients200ResponseInner.class )

    }

    def priceBreakdownByIDImage ( BigDecimal id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/recipes/${id}/priceBreakdownWidget.png"

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
                    QuickAnswer200Response.class )

    }

    def recipeNutritionByIDImage ( BigDecimal id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/recipes/${id}/nutritionWidget.png"

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

    def recipeNutritionLabelImage ( BigDecimal id, Boolean showOptionalNutrients, Boolean showZeroValues, Boolean showIngredients, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/recipes/${id}/nutritionLabel.png"

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

    def recipeNutritionLabelWidget ( BigDecimal id, Boolean defaultCss, Boolean showOptionalNutrients, Boolean showZeroValues, Boolean showIngredients, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/recipes/${id}/nutritionLabel"

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

    def recipeTasteByIDImage ( BigDecimal id, Boolean normalize, String rgb, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/recipes/${id}/tasteWidget.png"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }

        if (normalize != null) {
            queryParams.put("normalize", normalize)
        }
        if (rgb != null) {
            queryParams.put("rgb", rgb)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    Object.class )

    }

    def searchRecipes ( String query, String cuisine, String excludeCuisine, String diet, String intolerances, String equipment, String includeIngredients, String excludeIngredients, String type, Boolean instructionsRequired, Boolean fillIngredients, Boolean addRecipeInformation, Boolean addRecipeNutrition, String author, String tags, BigDecimal recipeBoxId, String titleMatch, BigDecimal maxReadyTime, Boolean ignorePantry, String sort, String sortDirection, BigDecimal minCarbs, BigDecimal maxCarbs, BigDecimal minProtein, BigDecimal maxProtein, BigDecimal minCalories, BigDecimal maxCalories, BigDecimal minFat, BigDecimal maxFat, BigDecimal minAlcohol, BigDecimal maxAlcohol, BigDecimal minCaffeine, BigDecimal maxCaffeine, BigDecimal minCopper, BigDecimal maxCopper, BigDecimal minCalcium, BigDecimal maxCalcium, BigDecimal minCholine, BigDecimal maxCholine, BigDecimal minCholesterol, BigDecimal maxCholesterol, BigDecimal minFluoride, BigDecimal maxFluoride, BigDecimal minSaturatedFat, BigDecimal maxSaturatedFat, BigDecimal minVitaminA, BigDecimal maxVitaminA, BigDecimal minVitaminC, BigDecimal maxVitaminC, BigDecimal minVitaminD, BigDecimal maxVitaminD, BigDecimal minVitaminE, BigDecimal maxVitaminE, BigDecimal minVitaminK, BigDecimal maxVitaminK, BigDecimal minVitaminB1, BigDecimal maxVitaminB1, BigDecimal minVitaminB2, BigDecimal maxVitaminB2, BigDecimal minVitaminB5, BigDecimal maxVitaminB5, BigDecimal minVitaminB3, BigDecimal maxVitaminB3, BigDecimal minVitaminB6, BigDecimal maxVitaminB6, BigDecimal minVitaminB12, BigDecimal maxVitaminB12, BigDecimal minFiber, BigDecimal maxFiber, BigDecimal minFolate, BigDecimal maxFolate, BigDecimal minFolicAcid, BigDecimal maxFolicAcid, BigDecimal minIodine, BigDecimal maxIodine, BigDecimal minIron, BigDecimal maxIron, BigDecimal minMagnesium, BigDecimal maxMagnesium, BigDecimal minManganese, BigDecimal maxManganese, BigDecimal minPhosphorus, BigDecimal maxPhosphorus, BigDecimal minPotassium, BigDecimal maxPotassium, BigDecimal minSelenium, BigDecimal maxSelenium, BigDecimal minSodium, BigDecimal maxSodium, BigDecimal minSugar, BigDecimal maxSugar, BigDecimal minZinc, BigDecimal maxZinc, Integer offset, Integer number, Boolean limitLicense, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/recipes/complexSearch"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


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
        if (addRecipeNutrition != null) {
            queryParams.put("addRecipeNutrition", addRecipeNutrition)
        }
        if (author != null) {
            queryParams.put("author", author)
        }
        if (tags != null) {
            queryParams.put("tags", tags)
        }
        if (recipeBoxId != null) {
            queryParams.put("recipeBoxId", recipeBoxId)
        }
        if (titleMatch != null) {
            queryParams.put("titleMatch", titleMatch)
        }
        if (maxReadyTime != null) {
            queryParams.put("maxReadyTime", maxReadyTime)
        }
        if (ignorePantry != null) {
            queryParams.put("ignorePantry", ignorePantry)
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
                    SearchRecipes200Response.class )

    }

    def searchRecipesByIngredients ( String ingredients, Integer number, Boolean limitLicense, BigDecimal ranking, Boolean ignorePantry, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/recipes/findByIngredients"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


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
                    "GET", "set",
                    SearchRecipesByIngredients200ResponseInner.class )

    }

    def searchRecipesByNutrients ( BigDecimal minCarbs, BigDecimal maxCarbs, BigDecimal minProtein, BigDecimal maxProtein, BigDecimal minCalories, BigDecimal maxCalories, BigDecimal minFat, BigDecimal maxFat, BigDecimal minAlcohol, BigDecimal maxAlcohol, BigDecimal minCaffeine, BigDecimal maxCaffeine, BigDecimal minCopper, BigDecimal maxCopper, BigDecimal minCalcium, BigDecimal maxCalcium, BigDecimal minCholine, BigDecimal maxCholine, BigDecimal minCholesterol, BigDecimal maxCholesterol, BigDecimal minFluoride, BigDecimal maxFluoride, BigDecimal minSaturatedFat, BigDecimal maxSaturatedFat, BigDecimal minVitaminA, BigDecimal maxVitaminA, BigDecimal minVitaminC, BigDecimal maxVitaminC, BigDecimal minVitaminD, BigDecimal maxVitaminD, BigDecimal minVitaminE, BigDecimal maxVitaminE, BigDecimal minVitaminK, BigDecimal maxVitaminK, BigDecimal minVitaminB1, BigDecimal maxVitaminB1, BigDecimal minVitaminB2, BigDecimal maxVitaminB2, BigDecimal minVitaminB5, BigDecimal maxVitaminB5, BigDecimal minVitaminB3, BigDecimal maxVitaminB3, BigDecimal minVitaminB6, BigDecimal maxVitaminB6, BigDecimal minVitaminB12, BigDecimal maxVitaminB12, BigDecimal minFiber, BigDecimal maxFiber, BigDecimal minFolate, BigDecimal maxFolate, BigDecimal minFolicAcid, BigDecimal maxFolicAcid, BigDecimal minIodine, BigDecimal maxIodine, BigDecimal minIron, BigDecimal maxIron, BigDecimal minMagnesium, BigDecimal maxMagnesium, BigDecimal minManganese, BigDecimal maxManganese, BigDecimal minPhosphorus, BigDecimal maxPhosphorus, BigDecimal minPotassium, BigDecimal maxPotassium, BigDecimal minSelenium, BigDecimal maxSelenium, BigDecimal minSodium, BigDecimal maxSodium, BigDecimal minSugar, BigDecimal maxSugar, BigDecimal minZinc, BigDecimal maxZinc, Integer offset, Integer number, Boolean random, Boolean limitLicense, Closure onSuccess, Closure onFailure)  {
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
                    "GET", "set",
                    SearchRecipesByNutrients200ResponseInner.class )

    }

    def summarizeRecipe ( Integer id, Closure onSuccess, Closure onFailure)  {
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
                    SummarizeRecipe200Response.class )

    }

    def visualizeEquipment ( String contentType, String accept, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/recipes/visualizeEquipment"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType



        if (contentType != null) {
            headerParams.put("Content-Type", contentType)
        }
        if (accept != null) {
            headerParams.put("Accept", accept)
        }



        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    String.class )

    }

    def visualizePriceBreakdown ( String contentType, String accept, String language, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/recipes/visualizePriceEstimator"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (language != null) {
            queryParams.put("language", language)
        }

        if (contentType != null) {
            headerParams.put("Content-Type", contentType)
        }
        if (accept != null) {
            headerParams.put("Accept", accept)
        }



        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    String.class )

    }

    def visualizeRecipeEquipmentByID ( Integer id, Boolean defaultCss, Closure onSuccess, Closure onFailure)  {
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

    def visualizeRecipeIngredientsByID ( Integer id, Boolean defaultCss, String measure, Closure onSuccess, Closure onFailure)  {
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
        if (measure != null) {
            queryParams.put("measure", measure)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    String.class )

    }

    def visualizeRecipeNutrition ( String contentType, String accept, String language, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/recipes/visualizeNutrition"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (language != null) {
            queryParams.put("language", language)
        }

        if (contentType != null) {
            headerParams.put("Content-Type", contentType)
        }
        if (accept != null) {
            headerParams.put("Accept", accept)
        }



        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    String.class )

    }

    def visualizeRecipeNutritionByID ( Integer id, Boolean defaultCss, String accept, Closure onSuccess, Closure onFailure)  {
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

        if (accept != null) {
            headerParams.put("Accept", accept)
        }



        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    String.class )

    }

    def visualizeRecipePriceBreakdownByID ( Integer id, Boolean defaultCss, Closure onSuccess, Closure onFailure)  {
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

    def visualizeRecipeTaste ( String language, String contentType, String accept, Boolean normalize, String rgb, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/recipes/visualizeTaste"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (language != null) {
            queryParams.put("language", language)
        }
        if (normalize != null) {
            queryParams.put("normalize", normalize)
        }
        if (rgb != null) {
            queryParams.put("rgb", rgb)
        }

        if (contentType != null) {
            headerParams.put("Content-Type", contentType)
        }
        if (accept != null) {
            headerParams.put("Accept", accept)
        }



        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    String.class )

    }

    def visualizeRecipeTasteByID ( Integer id, Boolean normalize, String rgb, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/recipes/${id}/tasteWidget"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }

        if (normalize != null) {
            queryParams.put("normalize", normalize)
        }
        if (rgb != null) {
            queryParams.put("rgb", rgb)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    String.class )

    }

}
