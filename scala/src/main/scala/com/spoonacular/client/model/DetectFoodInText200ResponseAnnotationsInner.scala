package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._

/**
 * 
 * @param annotation 
 * @param image 
 * @param tag 
 */
case class DetectFoodInText200ResponseAnnotationsInner(annotation: String,
                image: String,
                tag: String
                )

object DetectFoodInText200ResponseAnnotationsInner {
    /**
     * Creates the codec for converting DetectFoodInText200ResponseAnnotationsInner from and to JSON.
     */
    implicit val decoder: Decoder[DetectFoodInText200ResponseAnnotationsInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[DetectFoodInText200ResponseAnnotationsInner] = deriveEncoder
}
