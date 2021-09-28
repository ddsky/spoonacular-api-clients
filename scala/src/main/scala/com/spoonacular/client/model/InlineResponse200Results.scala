package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import java.math.BigDecimal

/**
 * 
 * @param id 
 * @param title 
 * @param calories 
 * @param carbs 
 * @param fat 
 * @param image 
 * @param imageType 
 * @param protein 
 */
case class InlineResponse200Results(id: Int,
                title: String,
                calories: BigDecimal,
                carbs: String,
                fat: String,
                image: String,
                imageType: String,
                protein: String
                )

object InlineResponse200Results {
    /**
     * Creates the codec for converting InlineResponse200Results from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse200Results] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse200Results] = deriveEncoder
}
