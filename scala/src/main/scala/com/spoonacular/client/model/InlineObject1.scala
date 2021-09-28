package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._

/**
 * 
 * @param title 
 * @param upc 
 * @param pluUnderscorecode 
 */
case class InlineObject1(title: String,
                upc: String,
                pluUnderscorecode: String
                )

object InlineObject1 {
    /**
     * Creates the codec for converting InlineObject1 from and to JSON.
     */
    implicit val decoder: Decoder[InlineObject1] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineObject1] = deriveEncoder
}
