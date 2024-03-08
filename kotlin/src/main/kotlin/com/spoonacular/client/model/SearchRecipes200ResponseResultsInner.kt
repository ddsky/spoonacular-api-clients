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


import com.squareup.moshi.Json
import com.squareup.moshi.JsonClass

/**
 * 
 *
 * @param id 
 * @param title 
 * @param calories 
 * @param carbs 
 * @param fat 
 * @param image 
 * @param imageType 
 * @param protein 
 */


data class SearchRecipes200ResponseResultsInner (

    @Json(name = "id")
    val id: kotlin.Int,

    @Json(name = "title")
    val title: kotlin.String,

    @Json(name = "calories")
    val calories: java.math.BigDecimal,

    @Json(name = "carbs")
    val carbs: kotlin.String,

    @Json(name = "fat")
    val fat: kotlin.String,

    @Json(name = "image")
    val image: kotlin.String,

    @Json(name = "imageType")
    val imageType: kotlin.String,

    @Json(name = "protein")
    val protein: kotlin.String

)

