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
 * @param description 
 * @param price 
 * @param imageUrl 
 * @param averageRating 
 * @param ratingCount 
 * @param score 
 * @param link 
 */
case class InlineResponse2003WinePairingProductMatches(id: Int,
                title: String,
                description: String,
                price: String,
                imageUrl: String,
                averageRating: BigDecimal,
                ratingCount: Int,
                score: BigDecimal,
                link: String
                )

object InlineResponse2003WinePairingProductMatches {
    /**
     * Creates the codec for converting InlineResponse2003WinePairingProductMatches from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse2003WinePairingProductMatches] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse2003WinePairingProductMatches] = deriveEncoder
}
