package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.InlineResponse20048Category
import com.spoonacular.client.model.InlineResponse20048Nutrition
import com.spoonacular.client.model.InlineResponse20048Recipes
import scala.collection.immutable.Seq

/**
 * 
 * @param nutrition 
 * @param category 
 * @param recipes 
 */
case class InlineResponse20048(nutrition: InlineResponse20048Nutrition,
                category: InlineResponse20048Category,
                recipes: Seq[InlineResponse20048Recipes]
                )

object InlineResponse20048 {
    /**
     * Creates the codec for converting InlineResponse20048 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20048] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20048] = deriveEncoder
}
