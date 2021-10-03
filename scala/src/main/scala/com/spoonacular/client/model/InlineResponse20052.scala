package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import scala.collection.immutable.Seq

/**
 * 
 * @param Articles 
 * @param Grocery Products 
 * @param Menu Items 
 * @param Recipes 
 */
case class InlineResponse20052(Articles: Seq[Object],
                Grocery Products: Seq[Object],
                Menu Items: Seq[Object],
                Recipes: Seq[Object]
                )

object InlineResponse20052 {
    /**
     * Creates the codec for converting InlineResponse20052 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20052] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20052] = deriveEncoder
}
