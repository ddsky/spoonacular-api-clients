package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.InlineResponse20010Amount

/**
 * 
 * @param amount 
 * @param image 
 * @param name 
 */
case class InlineResponse20011Ingredients(amount: Option[InlineResponse20010Amount],
                image: String,
                name: String
                )

object InlineResponse20011Ingredients {
    /**
     * Creates the codec for converting InlineResponse20011Ingredients from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20011Ingredients] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20011Ingredients] = deriveEncoder
}
