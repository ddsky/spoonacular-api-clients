package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._

/**
 * 
 * @param id 
 * @param title 
 * @param image 
 * @param imageType 
 */
case class SearchRecipes200ResponseResultsInner(id: Int,
                title: String,
                image: String,
                imageType: String
                )

object SearchRecipes200ResponseResultsInner {
    /**
     * Creates the codec for converting SearchRecipes200ResponseResultsInner from and to JSON.
     */
    implicit val decoder: Decoder[SearchRecipes200ResponseResultsInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[SearchRecipes200ResponseResultsInner] = deriveEncoder
}
