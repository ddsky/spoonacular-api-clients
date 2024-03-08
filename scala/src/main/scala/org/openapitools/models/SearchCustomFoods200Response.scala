package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.SearchCustomFoods200ResponseCustomFoodsInner

/**
 * 
 * @param customFoods 
 * @param _type 
 * @param offset 
 * @param number 
 */
case class SearchCustomFoods200Response(customFoods: Set[SearchCustomFoods200ResponseCustomFoodsInner],
                _type: String,
                offset: Int,
                number: Int
                )

object SearchCustomFoods200Response {
    /**
     * Creates the codec for converting SearchCustomFoods200Response from and to JSON.
     */
    implicit val decoder: Decoder[SearchCustomFoods200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[SearchCustomFoods200Response] = deriveEncoder
}
