package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.GetWineRecommendation200ResponseRecommendedWinesInner

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
