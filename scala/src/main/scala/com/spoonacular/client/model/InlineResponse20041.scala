package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.InlineResponse20041Days
import scala.collection.immutable.Seq

/**
 * 
 * @param id 
 * @param name 
 * @param days 
 */
case class InlineResponse20041(id: Int,
                name: String,
                days: Seq[InlineResponse20041Days]
                )

object InlineResponse20041 {
    /**
     * Creates the codec for converting InlineResponse20041 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20041] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20041] = deriveEncoder
}
