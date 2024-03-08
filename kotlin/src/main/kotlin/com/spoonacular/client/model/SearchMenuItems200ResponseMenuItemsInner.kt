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

import com.spoonacular.client.model.SearchGroceryProductsByUPC200ResponseServings

import com.squareup.moshi.Json
import com.squareup.moshi.JsonClass

/**
 * 
 *
 * @param id 
 * @param title 
 * @param restaurantChain 
 * @param image 
 * @param imageType 
 * @param servings 
 */


data class SearchMenuItems200ResponseMenuItemsInner (

    @Json(name = "id")
    val id: kotlin.Int,

    @Json(name = "title")
    val title: kotlin.String,

    @Json(name = "restaurantChain")
    val restaurantChain: kotlin.String,

    @Json(name = "image")
    val image: kotlin.String,

    @Json(name = "imageType")
    val imageType: kotlin.String,

    @Json(name = "servings")
    val servings: SearchGroceryProductsByUPC200ResponseServings? = null

)

