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

import com.spoonacular.client.model.GetProductInformation200ResponseIngredientsInner
import com.spoonacular.client.model.SearchGroceryProductsByUPC200ResponseNutrition
import com.spoonacular.client.model.SearchGroceryProductsByUPC200ResponseServings

import com.squareup.moshi.Json
import com.squareup.moshi.JsonClass

/**
 * 
 *
 * @param id 
 * @param title 
 * @param breadcrumbs 
 * @param imageType 
 * @param badges 
 * @param importantBadges 
 * @param ingredientCount 
 * @param ingredientList 
 * @param ingredients 
 * @param likes 
 * @param aisle 
 * @param nutrition 
 * @param price 
 * @param servings 
 * @param spoonacularScore 
 * @param generatedText 
 */


data class GetProductInformation200Response (

    @Json(name = "id")
    val id: kotlin.Int,

    @Json(name = "title")
    val title: kotlin.String,

    @Json(name = "breadcrumbs")
    val breadcrumbs: kotlin.collections.List<kotlin.String>,

    @Json(name = "imageType")
    val imageType: kotlin.String,

    @Json(name = "badges")
    val badges: kotlin.collections.List<kotlin.String>,

    @Json(name = "importantBadges")
    val importantBadges: kotlin.collections.List<kotlin.String>,

    @Json(name = "ingredientCount")
    val ingredientCount: kotlin.Int,

    @Json(name = "ingredientList")
    val ingredientList: kotlin.String,

    @Json(name = "ingredients")
    val ingredients: kotlin.collections.List<GetProductInformation200ResponseIngredientsInner>,

    @Json(name = "likes")
    val likes: java.math.BigDecimal,

    @Json(name = "aisle")
    val aisle: kotlin.String,

    @Json(name = "nutrition")
    val nutrition: SearchGroceryProductsByUPC200ResponseNutrition,

    @Json(name = "price")
    val price: java.math.BigDecimal,

    @Json(name = "servings")
    val servings: SearchGroceryProductsByUPC200ResponseServings,

    @Json(name = "spoonacularScore")
    val spoonacularScore: java.math.BigDecimal,

    @Json(name = "generatedText")
    val generatedText: kotlin.Any? = null

)

