package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._

/**
 * 
 * @param id 
 * @param title 
 * @param imageType 
 * @param url 
 */
case class InlineResponse20048Recipes(id: Int,
                title: String,
                imageType: String,
                url: String
                )

object InlineResponse20048Recipes {
    /**
     * Creates the codec for converting InlineResponse20048Recipes from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20048Recipes] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20048Recipes] = deriveEncoder
}
