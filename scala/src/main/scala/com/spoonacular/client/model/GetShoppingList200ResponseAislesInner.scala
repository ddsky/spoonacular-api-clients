package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.spoonacular.client.model.GetShoppingList200ResponseAislesInnerItemsInner
import scala.collection.immutable.Seq

/**
 * 
 * @param aisle 
 * @param items 
 */
case class GetShoppingList200ResponseAislesInner(aisle: String,
                items: Option[Set[GetShoppingList200ResponseAislesInnerItemsInner]]
                )

object GetShoppingList200ResponseAislesInner {
    /**
     * Creates the codec for converting GetShoppingList200ResponseAislesInner from and to JSON.
     */
    implicit val decoder: Decoder[GetShoppingList200ResponseAislesInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[GetShoppingList200ResponseAislesInner] = deriveEncoder
}
