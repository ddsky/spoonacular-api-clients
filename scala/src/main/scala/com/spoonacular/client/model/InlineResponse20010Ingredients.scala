package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.InlineResponse20010Amount
import java.math.BigDecimal

/**
 * 
 * @param amount 
 * @param image 
 * @param name 
 * @param price 
 */
case class InlineResponse20010Ingredients(amount: Option[InlineResponse20010Amount],
                image: String,
                name: String,
                price: BigDecimal
                )

object InlineResponse20010Ingredients {
    /**
     * Creates the codec for converting InlineResponse20010Ingredients from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20010Ingredients] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20010Ingredients] = deriveEncoder
}
