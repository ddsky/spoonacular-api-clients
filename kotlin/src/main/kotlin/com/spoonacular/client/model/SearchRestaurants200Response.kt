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

import com.spoonacular.client.model.SearchRestaurants200ResponseRestaurantsInner

import com.squareup.moshi.Json
import com.squareup.moshi.JsonClass

/**
 * 
 *
 * @param restaurants 
 */


data class SearchRestaurants200Response (

    @Json(name = "restaurants")
    val restaurants: kotlin.collections.List<SearchRestaurants200ResponseRestaurantsInner>? = null

)

