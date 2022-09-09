package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.spoonacular.client.model.BigDecimal

/**
 * 
 * @param id 
 * @param title 
 * @param servings 
 * @param imageUrl 
 * @param price 
 */
case class SearchCustomFoods200ResponseCustomFoodsInner(id: Int,
                title: String,
                servings: BigDecimal,
                imageUrl: String,
                price: BigDecimal
                )

object SearchCustomFoods200ResponseCustomFoodsInner {
    /**
     * Creates the codec for converting SearchCustomFoods200ResponseCustomFoodsInner from and to JSON.
     */
    implicit val decoder: Decoder[SearchCustomFoods200ResponseCustomFoodsInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[SearchCustomFoods200ResponseCustomFoodsInner] = deriveEncoder
}
