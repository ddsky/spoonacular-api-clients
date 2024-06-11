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
 * @param averageRating 
 * @param imageUrl 
 * @param link 
 * @param price 
 * @param ratingCount 
 * @param score 
 * @param description 
 */


data class GetWinePairing200ResponseProductMatchesInner (

    @Json(name = "id")
    val id: kotlin.Int,

    @Json(name = "title")
    val title: kotlin.String,

    @Json(name = "averageRating")
    val averageRating: java.math.BigDecimal,

    @Json(name = "imageUrl")
    val imageUrl: kotlin.String,

    @Json(name = "link")
    val link: kotlin.String,

    @Json(name = "price")
    val price: kotlin.String,

    @Json(name = "ratingCount")
    val ratingCount: kotlin.Int,

    @Json(name = "score")
    val score: java.math.BigDecimal,

    @Json(name = "description")
    val description: kotlin.String? = null

)

