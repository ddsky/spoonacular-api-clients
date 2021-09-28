package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import java.math.BigDecimal
import scala.collection.immutable.Seq

/**
 * 
 * @param ingredients 
 * @param servings 
 */
case class InlineObject2(ingredients: Seq[String],
                servings: BigDecimal
                )

object InlineObject2 {
    /**
     * Creates the codec for converting InlineObject2 from and to JSON.
     */
    implicit val decoder: Decoder[InlineObject2] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineObject2] = deriveEncoder
}
