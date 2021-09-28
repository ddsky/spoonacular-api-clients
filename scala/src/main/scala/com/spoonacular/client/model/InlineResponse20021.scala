package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.InlineResponse20021Calories

/**
 * 
 * @param calories 
 * @param carbs 
 * @param fat 
 * @param protein 
 * @param recipesUsed 
 */
case class InlineResponse20021(calories: InlineResponse20021Calories,
                carbs: InlineResponse20021Calories,
                fat: InlineResponse20021Calories,
                protein: InlineResponse20021Calories,
                recipesUsed: Int
                )

object InlineResponse20021 {
    /**
     * Creates the codec for converting InlineResponse20021 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20021] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20021] = deriveEncoder
}
