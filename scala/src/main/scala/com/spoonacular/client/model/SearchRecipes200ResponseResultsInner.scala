package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.spoonacular.client.model.BigDecimal

/**
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
case class SearchRecipes200ResponseResultsInner(id: Int,
                title: String,
                calories: BigDecimal,
                carbs: String,
                fat: String,
                image: String,
                imageType: String,
                protein: String
                )

object SearchRecipes200ResponseResultsInner {
    /**
     * Creates the codec for converting SearchRecipes200ResponseResultsInner from and to JSON.
     */
    implicit val decoder: Decoder[SearchRecipes200ResponseResultsInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[SearchRecipes200ResponseResultsInner] = deriveEncoder
}
