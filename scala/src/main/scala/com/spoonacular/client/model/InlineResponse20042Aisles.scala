package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.InlineResponse20042Items
import scala.collection.immutable.Seq

/**
 * 
 * @param aisle 
 * @param items 
 */
case class InlineResponse20042Aisles(aisle: String,
                items: Option[Seq[InlineResponse20042Items]]
                )

object InlineResponse20042Aisles {
    /**
     * Creates the codec for converting InlineResponse20042Aisles from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20042Aisles] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20042Aisles] = deriveEncoder
}
