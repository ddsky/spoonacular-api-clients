package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.InlineResponse20038Days
import scala.collection.immutable.Seq

/**
 * 
 * @param days 
 */
case class InlineResponse20038(days: Seq[InlineResponse20038Days]
                )

object InlineResponse20038 {
    /**
     * Creates the codec for converting InlineResponse20038 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20038] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20038] = deriveEncoder
}
