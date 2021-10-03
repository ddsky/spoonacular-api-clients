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
 * @param title 
 * @param averageRating 
 * @param description 
 * @param imageUrl 
 * @param link 
 * @param price 
 * @param ratingCount 
 * @param score 
 */
case class InlineResponse20047RecommendedWines(id: Int,
                title: String,
                averageRating: BigDecimal,
                description: String,
                imageUrl: String,
                link: String,
                price: String,
                ratingCount: Int,
                score: BigDecimal
                )

object InlineResponse20047RecommendedWines {
    /**
     * Creates the codec for converting InlineResponse20047RecommendedWines from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20047RecommendedWines] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20047RecommendedWines] = deriveEncoder
}
