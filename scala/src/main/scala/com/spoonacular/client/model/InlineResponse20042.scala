package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.InlineResponse20042Aisles
import java.math.BigDecimal
import scala.collection.immutable.Seq

/**
 * 
 * @param aisles 
 * @param cost 
 * @param startDate 
 * @param endDate 
 */
case class InlineResponse20042(aisles: Seq[InlineResponse20042Aisles],
                cost: BigDecimal,
                startDate: BigDecimal,
                endDate: BigDecimal
                )

object InlineResponse20042 {
    /**
     * Creates the codec for converting InlineResponse20042 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20042] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20042] = deriveEncoder
}
