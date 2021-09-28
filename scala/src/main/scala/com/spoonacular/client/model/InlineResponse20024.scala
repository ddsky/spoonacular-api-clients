package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import scala.collection.immutable.Seq

/**
 * 
 * @param name 
 * @param image 
 * @param id 
 * @param aisle 
 * @param possibleUnits 
 */
case class InlineResponse20024(name: String,
                image: String,
                id: Int,
                aisle: String,
                possibleUnits: Seq[String]
                )

object InlineResponse20024 {
    /**
     * Creates the codec for converting InlineResponse20024 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20024] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20024] = deriveEncoder
}
