package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.InlineResponse20037Nutrients
import com.spoonacular.client.model.InlineResponse2005
import scala.collection.immutable.Seq

/**
 * 
 * @param meals 
 * @param nutrients 
 */
case class InlineResponse20037(meals: Seq[InlineResponse2005],
                nutrients: InlineResponse20037Nutrients
                )

object InlineResponse20037 {
    /**
     * Creates the codec for converting InlineResponse20037 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20037] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20037] = deriveEncoder
}
