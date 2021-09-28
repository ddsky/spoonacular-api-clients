package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.InlineResponse20023Ingredients
import java.math.BigDecimal
import scala.collection.immutable.Seq

/**
 * 
 * @param totalGlycemicLoad 
 * @param ingredients 
 */
case class InlineResponse20023(totalGlycemicLoad: BigDecimal,
                ingredients: Seq[InlineResponse20023Ingredients]
                )

object InlineResponse20023 {
    /**
     * Creates the codec for converting InlineResponse20023 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20023] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20023] = deriveEncoder
}
