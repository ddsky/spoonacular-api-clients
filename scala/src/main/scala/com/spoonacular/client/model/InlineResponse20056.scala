package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.InlineResponse20056Suggests
import scala.collection.immutable.Seq

/**
 * 
 * @param suggests 
 * @param words 
 */
case class InlineResponse20056(suggests: InlineResponse20056Suggests,
                words: Seq[Object]
                )

object InlineResponse20056 {
    /**
     * Creates the codec for converting InlineResponse20056 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20056] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20056] = deriveEncoder
}
