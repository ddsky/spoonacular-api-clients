package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._

/**
 * 
 * @param id 
 * @param name 
 * @param localizedName 
 * @param image 
 */
case class InlineResponse20013Ingredients(id: Int,
                name: String,
                localizedName: String,
                image: String
                )

object InlineResponse20013Ingredients {
    /**
     * Creates the codec for converting InlineResponse20013Ingredients from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20013Ingredients] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20013Ingredients] = deriveEncoder
}
