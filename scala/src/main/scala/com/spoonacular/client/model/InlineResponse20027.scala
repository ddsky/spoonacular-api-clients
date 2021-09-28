package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.InlineResponse2007
import scala.collection.immutable.Seq

/**
 * 
 * @param products 
 * @param totalProducts 
 * @param _type 
 * @param offset 
 * @param number 
 */
case class InlineResponse20027(products: Seq[InlineResponse2007],
                totalProducts: Int,
                _type: String,
                offset: Int,
                number: Int
                )

object InlineResponse20027 {
    /**
     * Creates the codec for converting InlineResponse20027 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20027] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20027] = deriveEncoder
}
