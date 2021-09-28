package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.InlineResponse20011Ingredients
import scala.collection.immutable.Seq

/**
 * 
 * @param ingredients 
 */
case class InlineResponse20011(ingredients: Seq[InlineResponse20011Ingredients]
                )

object InlineResponse20011 {
    /**
     * Creates the codec for converting InlineResponse20011 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20011] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20011] = deriveEncoder
}
