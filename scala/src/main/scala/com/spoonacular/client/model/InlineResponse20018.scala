package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.InlineResponse20018Dishes
import com.spoonacular.client.model.InlineResponse20018Ingredients
import scala.collection.immutable.Seq

/**
 * 
 * @param dishes 
 * @param ingredients 
 * @param cuisines 
 * @param modifiers 
 */
case class InlineResponse20018(dishes: Seq[InlineResponse20018Dishes],
                ingredients: Seq[InlineResponse20018Ingredients],
                cuisines: Seq[String],
                modifiers: Seq[String]
                )

object InlineResponse20018 {
    /**
     * Creates the codec for converting InlineResponse20018 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20018] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20018] = deriveEncoder
}
