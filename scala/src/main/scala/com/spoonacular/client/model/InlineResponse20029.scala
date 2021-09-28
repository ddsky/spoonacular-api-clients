package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.InlineResponse20029CustomFoods
import scala.collection.immutable.Seq

/**
 * 
 * @param customFoods 
 * @param _type 
 * @param offset 
 * @param number 
 */
case class InlineResponse20029(customFoods: Seq[InlineResponse20029CustomFoods],
                _type: String,
                offset: Int,
                number: Int
                )

object InlineResponse20029 {
    /**
     * Creates the codec for converting InlineResponse20029 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20029] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20029] = deriveEncoder
}
