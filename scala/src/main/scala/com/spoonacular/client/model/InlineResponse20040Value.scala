package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import java.math.BigDecimal

/**
 * 
 * @param id 
 * @param servings 
 * @param title 
 * @param imageType 
 */
case class InlineResponse20040Value(id: Option[Int],
                servings: Option[BigDecimal],
                title: Option[String],
                imageType: Option[String]
                )

object InlineResponse20040Value {
    /**
     * Creates the codec for converting InlineResponse20040Value from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20040Value] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20040Value] = deriveEncoder
}
