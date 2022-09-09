package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.spoonacular.client.model.BigDecimal

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
case class GetRecipeInformation200ResponseWinePairingProductMatchesInner(id: Int,
                title: String,
                description: String,
                price: String,
                imageUrl: String,
                averageRating: BigDecimal,
                ratingCount: Int,
                score: BigDecimal,
                link: String
                )

object GetRecipeInformation200ResponseWinePairingProductMatchesInner {
    /**
     * Creates the codec for converting GetRecipeInformation200ResponseWinePairingProductMatchesInner from and to JSON.
     */
    implicit val decoder: Decoder[GetRecipeInformation200ResponseWinePairingProductMatchesInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[GetRecipeInformation200ResponseWinePairingProductMatchesInner] = deriveEncoder
}
