package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.spoonacular.client.model.BigDecimal
import com.spoonacular.client.model.GetShoppingList200ResponseAislesInner
import scala.collection.immutable.Seq

/**
 * 
 * @param aisles 
 * @param cost 
 * @param startDate 
 * @param endDate 
 */
case class GetShoppingList200Response(aisles: Set[GetShoppingList200ResponseAislesInner],
                cost: BigDecimal,
                startDate: BigDecimal,
                endDate: BigDecimal
                )

object GetShoppingList200Response {
    /**
     * Creates the codec for converting GetShoppingList200Response from and to JSON.
     */
    implicit val decoder: Decoder[GetShoppingList200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[GetShoppingList200Response] = deriveEncoder
}
