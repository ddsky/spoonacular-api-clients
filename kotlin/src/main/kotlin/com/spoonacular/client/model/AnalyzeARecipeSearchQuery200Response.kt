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

import com.spoonacular.client.model.AnalyzeARecipeSearchQuery200ResponseDishesInner
import com.spoonacular.client.model.AnalyzeARecipeSearchQuery200ResponseIngredientsInner

import com.squareup.moshi.Json
import com.squareup.moshi.JsonClass

/**
 * 
 *
 * @param dishes 
 * @param ingredients 
 * @param cuisines 
 * @param modifiers 
 */


data class AnalyzeARecipeSearchQuery200Response (

    @Json(name = "dishes")
    val dishes: kotlin.collections.Set<AnalyzeARecipeSearchQuery200ResponseDishesInner>,

    @Json(name = "ingredients")
    val ingredients: kotlin.collections.Set<AnalyzeARecipeSearchQuery200ResponseIngredientsInner>,

    @Json(name = "cuisines")
    val cuisines: kotlin.collections.List<kotlin.String>,

    @Json(name = "modifiers")
    val modifiers: kotlin.collections.List<kotlin.String>

)

