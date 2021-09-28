package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.InlineResponse20013Ingredients
import java.math.BigDecimal
import scala.collection.immutable.Seq

/**
 * 
 * @param number 
 * @param step 
 * @param ingredients 
 * @param equipment 
 */
case class InlineResponse20013Steps(number: BigDecimal,
                step: String,
                ingredients: Option[Seq[InlineResponse20013Ingredients]],
                equipment: Option[Seq[InlineResponse20013Ingredients]]
                )

object InlineResponse20013Steps {
    /**
     * Creates the codec for converting InlineResponse20013Steps from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20013Steps] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20013Steps] = deriveEncoder
}
