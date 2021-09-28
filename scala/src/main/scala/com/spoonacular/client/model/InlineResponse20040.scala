package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.InlineResponse20040Days
import scala.collection.immutable.Seq

/**
 * 
 * @param id 
 * @param name 
 * @param days 
 */
case class InlineResponse20040(id: Int,
                name: String,
                days: Seq[InlineResponse20040Days]
                )

object InlineResponse20040 {
    /**
     * Creates the codec for converting InlineResponse20040 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20040] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20040] = deriveEncoder
}
