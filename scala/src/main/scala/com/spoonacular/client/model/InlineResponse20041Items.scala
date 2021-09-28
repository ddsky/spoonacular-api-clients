package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.InlineResponse20041Measures
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
case class InlineResponse20041Items(id: Int,
                name: String,
                measures: Option[InlineResponse20041Measures],
                pantryItem: Boolean,
                aisle: String,
                cost: BigDecimal,
                ingredientId: Int
                )

object InlineResponse20041Items {
    /**
     * Creates the codec for converting InlineResponse20041Items from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20041Items] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20041Items] = deriveEncoder
}
