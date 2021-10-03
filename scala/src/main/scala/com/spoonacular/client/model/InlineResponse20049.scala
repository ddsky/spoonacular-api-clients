package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.InlineResponse20049Category
import com.spoonacular.client.model.InlineResponse20049Nutrition
import com.spoonacular.client.model.InlineResponse20049Recipes
import scala.collection.immutable.Seq

/**
 * 
 * @param nutrition 
 * @param category 
 * @param recipes 
 */
case class InlineResponse20049(nutrition: InlineResponse20049Nutrition,
                category: InlineResponse20049Category,
                recipes: Seq[InlineResponse20049Recipes]
                )

object InlineResponse20049 {
    /**
     * Creates the codec for converting InlineResponse20049 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20049] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20049] = deriveEncoder
}
