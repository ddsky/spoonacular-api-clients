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
 * @param name 
 * @param image 
 * @param id 
 * @param aisle 
 * @param possibleUnits 
 */


data class AutocompleteIngredientSearch200ResponseInner (

    @Json(name = "name")
    val name: kotlin.String,

    @Json(name = "image")
    val image: kotlin.String,

    @Json(name = "id")
    val id: kotlin.Int? = null,

    @Json(name = "aisle")
    val aisle: kotlin.String? = null,

    @Json(name = "possibleUnits")
    val possibleUnits: kotlin.collections.List<kotlin.String>? = null

) {


}

