package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.spoonacular.client.model.SearchFoodVideos200ResponseVideosInner
import scala.collection.immutable.Seq

/**
 * 
 * @param videos 
 * @param totalResults 
 */
case class SearchFoodVideos200Response(videos: Set[SearchFoodVideos200ResponseVideosInner],
                totalResults: Int
                )

object SearchFoodVideos200Response {
    /**
     * Creates the codec for converting SearchFoodVideos200Response from and to JSON.
     */
    implicit val decoder: Decoder[SearchFoodVideos200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[SearchFoodVideos200Response] = deriveEncoder
}
