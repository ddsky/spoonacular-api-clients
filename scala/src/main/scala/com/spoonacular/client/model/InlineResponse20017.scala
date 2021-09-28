package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import java.math.BigDecimal
import scala.collection.immutable.Seq

/**
 * 
 * @param cuisine 
 * @param cuisines 
 * @param confidence 
 */
case class InlineResponse20017(cuisine: String,
                cuisines: Seq[String],
                confidence: BigDecimal
                )

object InlineResponse20017 {
    /**
     * Creates the codec for converting InlineResponse20017 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20017] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20017] = deriveEncoder
}
