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

import com.spoonacular.client.model.GetAnalyzedRecipeInstructions200ResponseIngredientsInner

import com.squareup.moshi.Json
import com.squareup.moshi.JsonClass

/**
 * 
 *
 * @param templates 
 */


data class GetMealPlanTemplates200Response (

    @Json(name = "templates")
    val templates: kotlin.collections.Set<GetAnalyzedRecipeInstructions200ResponseIngredientsInner>

) {


}

