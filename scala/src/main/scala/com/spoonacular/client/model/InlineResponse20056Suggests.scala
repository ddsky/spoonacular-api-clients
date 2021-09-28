package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import scala.collection.immutable.Seq

/**
 * 
 * @param Underscore 
 */
case class InlineResponse20056Suggests(Underscore: Seq[Object]
                )

object InlineResponse20056Suggests {
    /**
     * Creates the codec for converting InlineResponse20056Suggests from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20056Suggests] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20056Suggests] = deriveEncoder
}
