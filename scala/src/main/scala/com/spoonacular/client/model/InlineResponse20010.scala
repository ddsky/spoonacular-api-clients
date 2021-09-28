package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.InlineResponse20010Ingredients
import java.math.BigDecimal
import scala.collection.immutable.Seq

/**
 * 
 * @param ingredients 
 * @param totalCost 
 * @param totalCostPerServing 
 */
case class InlineResponse20010(ingredients: Seq[InlineResponse20010Ingredients],
                totalCost: BigDecimal,
                totalCostPerServing: BigDecimal
                )

object InlineResponse20010 {
    /**
     * Creates the codec for converting InlineResponse20010 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20010] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20010] = deriveEncoder
}
