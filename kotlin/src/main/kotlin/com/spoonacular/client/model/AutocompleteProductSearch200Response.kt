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

import com.spoonacular.client.model.AutocompleteProductSearch200ResponseResultsInner

import com.squareup.moshi.Json
import com.squareup.moshi.JsonClass

/**
 * 
 *
 * @param results 
 */


data class AutocompleteProductSearch200Response (

    @Json(name = "results")
    val results: kotlin.collections.Set<AutocompleteProductSearch200ResponseResultsInner>

)

