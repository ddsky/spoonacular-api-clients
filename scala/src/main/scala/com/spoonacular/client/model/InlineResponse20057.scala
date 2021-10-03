package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.InlineResponse20057Suggests
import scala.collection.immutable.Seq

/**
 * 
 * @param suggests 
 * @param words 
 */
case class InlineResponse20057(suggests: InlineResponse20057Suggests,
                words: Seq[Object]
                )

object InlineResponse20057 {
    /**
     * Creates the codec for converting InlineResponse20057 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20057] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20057] = deriveEncoder
}
