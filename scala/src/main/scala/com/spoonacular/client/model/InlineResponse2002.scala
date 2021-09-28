package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import java.math.BigDecimal

/**
 * 
 * @param calories 
 * @param carbs 
 * @param fat 
 * @param id 
 * @param image 
 * @param imageType 
 * @param protein 
 * @param title 
 */
case class InlineResponse2002(calories: BigDecimal,
                carbs: String,
                fat: String,
                id: Int,
                image: String,
                imageType: String,
                protein: String,
                title: String
                )

object InlineResponse2002 {
    /**
     * Creates the codec for converting InlineResponse2002 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse2002] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse2002] = deriveEncoder
}
