package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.FoodIngredientsMapProducts
import scala.collection.immutable.Seq

/**
 * 
 * @param original 
 * @param originalName 
 * @param ingredientImage 
 * @param meta 
 * @param products 
 */
case class InlineResponse20034(original: String,
                originalName: String,
                ingredientImage: String,
                meta: Seq[String],
                products: Seq[FoodIngredientsMapProducts]
                )

object InlineResponse20034 {
    /**
     * Creates the codec for converting InlineResponse20034 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20034] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20034] = deriveEncoder
}
