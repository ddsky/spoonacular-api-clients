package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import scala.collection.immutable.Seq

/**
 * 
 * @param calories 
 * @param carbs 
 * @param fat 
 * @param protein 
 * @param bad 
 * @param good 
 */
case class InlineResponse20012(calories: String,
                carbs: String,
                fat: String,
                protein: String,
                bad: Seq[Object],
                good: Seq[Object]
                )

object InlineResponse20012 {
    /**
     * Creates the codec for converting InlineResponse20012 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20012] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20012] = deriveEncoder
}
