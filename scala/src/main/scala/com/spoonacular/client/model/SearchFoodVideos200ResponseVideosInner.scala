package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.spoonacular.client.model.BigDecimal

/**
 * 
 * @param title 
 * @param length 
 * @param rating 
 * @param shortTitle 
 * @param thumbnail 
 * @param views 
 * @param youTubeId 
 */
case class SearchFoodVideos200ResponseVideosInner(title: String,
                length: Int,
                rating: BigDecimal,
                shortTitle: String,
                thumbnail: String,
                views: Int,
                youTubeId: String
                )

object SearchFoodVideos200ResponseVideosInner {
    /**
     * Creates the codec for converting SearchFoodVideos200ResponseVideosInner from and to JSON.
     */
    implicit val decoder: Decoder[SearchFoodVideos200ResponseVideosInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[SearchFoodVideos200ResponseVideosInner] = deriveEncoder
}
