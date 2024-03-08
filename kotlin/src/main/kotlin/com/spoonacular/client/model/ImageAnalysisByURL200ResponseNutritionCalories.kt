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

import com.spoonacular.client.model.ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent

import com.squareup.moshi.Json
import com.squareup.moshi.JsonClass

/**
 * 
 *
 * @param `value` 
 * @param unit 
 * @param confidenceRange95Percent 
 * @param standardDeviation 
 */


data class ImageAnalysisByURL200ResponseNutritionCalories (

    @Json(name = "value")
    val `value`: java.math.BigDecimal,

    @Json(name = "unit")
    val unit: kotlin.String,

    @Json(name = "confidenceRange95Percent")
    val confidenceRange95Percent: ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent,

    @Json(name = "standardDeviation")
    val standardDeviation: java.math.BigDecimal

)

