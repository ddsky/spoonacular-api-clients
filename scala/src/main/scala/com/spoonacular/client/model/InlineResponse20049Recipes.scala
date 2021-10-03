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
case class InlineResponse20049Recipes(id: Int,
                title: String,
                imageType: String,
                url: String
                )

object InlineResponse20049Recipes {
    /**
     * Creates the codec for converting InlineResponse20049Recipes from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20049Recipes] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20049Recipes] = deriveEncoder
}
