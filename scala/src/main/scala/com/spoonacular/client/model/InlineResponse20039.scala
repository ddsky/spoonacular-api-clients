package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.InlineResponse20013Ingredients1
import scala.collection.immutable.Seq

/**
 * 
 * @param templates 
 */
case class InlineResponse20039(templates: Seq[InlineResponse20013Ingredients1]
                )

object InlineResponse20039 {
    /**
     * Creates the codec for converting InlineResponse20039 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20039] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20039] = deriveEncoder
}
