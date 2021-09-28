package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import java.math.BigDecimal

/**
 * 
 * @param difference 
 * @param id 
 * @param image 
 * @param title 
 */
case class InlineResponse20031ComparableProductsProtein(difference: BigDecimal,
                id: Int,
                image: String,
                title: String
                )

object InlineResponse20031ComparableProductsProtein {
    /**
     * Creates the codec for converting InlineResponse20031ComparableProductsProtein from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20031ComparableProductsProtein] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20031ComparableProductsProtein] = deriveEncoder
}
