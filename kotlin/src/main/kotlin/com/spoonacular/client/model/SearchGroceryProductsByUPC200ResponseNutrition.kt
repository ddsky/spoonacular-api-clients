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

import com.spoonacular.client.model.ParseIngredients200ResponseInnerNutritionCaloricBreakdown
import com.spoonacular.client.model.ParseIngredients200ResponseInnerNutritionNutrientsInner

import com.squareup.moshi.Json
import com.squareup.moshi.JsonClass

/**
 * 
 *
 * @param nutrients 
 * @param caloricBreakdown 
 */


data class SearchGroceryProductsByUPC200ResponseNutrition (

    @Json(name = "nutrients")
    val nutrients: kotlin.collections.Set<ParseIngredients200ResponseInnerNutritionNutrientsInner>,

    @Json(name = "caloricBreakdown")
    val caloricBreakdown: ParseIngredients200ResponseInnerNutritionCaloricBreakdown

)

