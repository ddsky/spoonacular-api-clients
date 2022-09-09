package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.spoonacular.client.model.BigDecimal

/**
 * 
 * @param name 
 * @param probability 
 */
case class ImageAnalysisByURL200ResponseCategory(name: String,
                probability: BigDecimal
                )

object ImageAnalysisByURL200ResponseCategory {
    /**
     * Creates the codec for converting ImageAnalysisByURL200ResponseCategory from and to JSON.
     */
    implicit val decoder: Decoder[ImageAnalysisByURL200ResponseCategory] = deriveDecoder
    implicit val encoder: ObjectEncoder[ImageAnalysisByURL200ResponseCategory] = deriveEncoder
}
