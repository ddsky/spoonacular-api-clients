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
 * @param `annotation` 
 * @param image 
 * @param tag 
 */


data class DetectFoodInText200ResponseAnnotationsInner (

    @Json(name = "annotation")
    val `annotation`: kotlin.String,

    @Json(name = "image")
    val image: kotlin.String,

    @Json(name = "tag")
    val tag: kotlin.String

)

