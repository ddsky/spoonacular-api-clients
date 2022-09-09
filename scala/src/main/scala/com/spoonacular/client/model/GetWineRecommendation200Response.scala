package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.spoonacular.client.model.GetWineRecommendation200ResponseRecommendedWinesInner
import scala.collection.immutable.Seq

/**
 * 
 * @param recommendedWines 
 * @param totalFound 
 */
case class GetWineRecommendation200Response(recommendedWines: Set[GetWineRecommendation200ResponseRecommendedWinesInner],
                totalFound: Int
                )

object GetWineRecommendation200Response {
    /**
     * Creates the codec for converting GetWineRecommendation200Response from and to JSON.
     */
    implicit val decoder: Decoder[GetWineRecommendation200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[GetWineRecommendation200Response] = deriveEncoder
}
