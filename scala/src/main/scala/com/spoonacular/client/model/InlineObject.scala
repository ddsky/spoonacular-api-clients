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
case class InlineObject(title: String,
                upc: String,
                pluUnderscorecode: String
                )

object InlineObject {
    /**
     * Creates the codec for converting InlineObject from and to JSON.
     */
    implicit val decoder: Decoder[InlineObject] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineObject] = deriveEncoder
}
