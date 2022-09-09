package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.spoonacular.client.model.DetectFoodInText200ResponseAnnotationsInner
import scala.collection.immutable.Seq

/**
 * 
 * @param annotations 
 */
case class DetectFoodInText200Response(annotations: Set[DetectFoodInText200ResponseAnnotationsInner]
                )

object DetectFoodInText200Response {
    /**
     * Creates the codec for converting DetectFoodInText200Response from and to JSON.
     */
    implicit val decoder: Decoder[DetectFoodInText200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[DetectFoodInText200Response] = deriveEncoder
}
