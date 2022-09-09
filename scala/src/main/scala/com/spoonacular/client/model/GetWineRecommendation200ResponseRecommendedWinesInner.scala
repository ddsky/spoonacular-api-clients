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
 * @param averageRating 
 * @param description 
 * @param imageUrl 
 * @param link 
 * @param price 
 * @param ratingCount 
 * @param score 
 */
case class GetWineRecommendation200ResponseRecommendedWinesInner(id: Int,
                title: String,
                averageRating: BigDecimal,
                description: String,
                imageUrl: String,
                link: String,
                price: String,
                ratingCount: Int,
                score: BigDecimal
                )

object GetWineRecommendation200ResponseRecommendedWinesInner {
    /**
     * Creates the codec for converting GetWineRecommendation200ResponseRecommendedWinesInner from and to JSON.
     */
    implicit val decoder: Decoder[GetWineRecommendation200ResponseRecommendedWinesInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[GetWineRecommendation200ResponseRecommendedWinesInner] = deriveEncoder
}
