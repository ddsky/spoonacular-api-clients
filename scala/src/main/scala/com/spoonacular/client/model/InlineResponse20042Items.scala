package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.InlineResponse20042Measures
import java.math.BigDecimal

/**
 * 
 * @param id 
 * @param name 
 * @param measures 
 * @param pantryItem 
 * @param aisle 
 * @param cost 
 * @param ingredientId 
 */
case class InlineResponse20042Items(id: Int,
                name: String,
                measures: Option[InlineResponse20042Measures],
                pantryItem: Boolean,
                aisle: String,
                cost: BigDecimal,
                ingredientId: Int
                )

object InlineResponse20042Items {
    /**
     * Creates the codec for converting InlineResponse20042Items from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20042Items] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20042Items] = deriveEncoder
}
