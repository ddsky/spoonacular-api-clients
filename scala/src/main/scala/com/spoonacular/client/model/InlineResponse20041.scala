package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.InlineResponse20041Aisles
import java.math.BigDecimal
import scala.collection.immutable.Seq

/**
 * 
 * @param aisles 
 * @param cost 
 * @param startDate 
 * @param endDate 
 */
case class InlineResponse20041(aisles: Seq[InlineResponse20041Aisles],
                cost: BigDecimal,
                startDate: BigDecimal,
                endDate: BigDecimal
                )

object InlineResponse20041 {
    /**
     * Creates the codec for converting InlineResponse20041 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20041] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20041] = deriveEncoder
}
