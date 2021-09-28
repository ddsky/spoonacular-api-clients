package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._

/**
 * 
 * @param id 
 * @param title 
 * @param upc 
 */
case class FoodIngredientsMapProducts(id: Int,
                title: String,
                upc: String
                )

object FoodIngredientsMapProducts {
    /**
     * Creates the codec for converting FoodIngredientsMapProducts from and to JSON.
     */
    implicit val decoder: Decoder[FoodIngredientsMapProducts] = deriveDecoder
    implicit val encoder: ObjectEncoder[FoodIngredientsMapProducts] = deriveEncoder
}
