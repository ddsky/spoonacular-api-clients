/**
 *
 * Please note:
 * This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * Do not edit this file manually.
 *
 */

@file:Suppress(
    "ArrayInDataClass",
    "EnumEntryName",
    "RemoveRedundantQualifierName",
    "UnusedImport"
)

package com.spoonacular.client.model

import com.spoonacular.client.model.ImageAnalysisByURL200ResponseNutritionCalories

import com.squareup.moshi.Json
import com.squareup.moshi.JsonClass

/**
 * 
 *
 * @param recipesUsed 
 * @param calories 
 * @param fat 
 * @param protein 
 * @param carbs 
 */


data class ImageAnalysisByURL200ResponseNutrition (

    @Json(name = "recipesUsed")
    val recipesUsed: kotlin.Int,

    @Json(name = "calories")
    val calories: ImageAnalysisByURL200ResponseNutritionCalories,

    @Json(name = "fat")
    val fat: ImageAnalysisByURL200ResponseNutritionCalories,

    @Json(name = "protein")
    val protein: ImageAnalysisByURL200ResponseNutritionCalories,

    @Json(name = "carbs")
    val carbs: ImageAnalysisByURL200ResponseNutritionCalories

) {


}

