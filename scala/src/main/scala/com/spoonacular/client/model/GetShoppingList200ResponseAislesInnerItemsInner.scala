package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.spoonacular.client.model.BigDecimal
import com.spoonacular.client.model.GetShoppingList200ResponseAislesInnerItemsInnerMeasures

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
case class GetShoppingList200ResponseAislesInnerItemsInner(id: Int,
                name: String,
                measures: Option[GetShoppingList200ResponseAislesInnerItemsInnerMeasures],
                pantryItem: Boolean,
                aisle: String,
                cost: BigDecimal,
                ingredientId: Int
                )

object GetShoppingList200ResponseAislesInnerItemsInner {
    /**
     * Creates the codec for converting GetShoppingList200ResponseAislesInnerItemsInner from and to JSON.
     */
    implicit val decoder: Decoder[GetShoppingList200ResponseAislesInnerItemsInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[GetShoppingList200ResponseAislesInnerItemsInner] = deriveEncoder
}
