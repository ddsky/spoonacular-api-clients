package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.InlineResponse20041Items
import scala.collection.immutable.Seq

/**
 * 
 * @param aisle 
 * @param items 
 */
case class InlineResponse20041Aisles(aisle: String,
                items: Option[Seq[InlineResponse20041Items]]
                )

object InlineResponse20041Aisles {
    /**
     * Creates the codec for converting InlineResponse20041Aisles from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20041Aisles] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20041Aisles] = deriveEncoder
}
