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

import com.spoonacular.client.model.GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner

import com.squareup.moshi.Json
import com.squareup.moshi.JsonClass

/**
 * 
 *
 * @param number 
 * @param step 
 * @param ingredients 
 * @param equipment 
 */


data class GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInner (

    @Json(name = "number")
    val number: java.math.BigDecimal,

    @Json(name = "step")
    val step: kotlin.String,

    @Json(name = "ingredients")
    val ingredients: kotlin.collections.Set<GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner>? = null,

    @Json(name = "equipment")
    val equipment: kotlin.collections.Set<GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner>? = null

) {


}

