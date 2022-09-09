package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.spoonacular.client.model.BigDecimal
import scala.collection.immutable.Seq

/**
 * 
 * @param aisle 
 * @param amount 
 * @param id 
 * @param image 
 * @param meta 
 * @param name 
 * @param original 
 * @param originalName 
 * @param unit 
 * @param unitLong 
 * @param unitShort 
 */
case class SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner(aisle: String,
                amount: BigDecimal,
                id: Int,
                image: String,
                meta: Option[Seq[String]],
                name: String,
                original: String,
                originalName: String,
                unit: String,
                unitLong: String,
                unitShort: String
                )

object SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner {
    /**
     * Creates the codec for converting SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner from and to JSON.
     */
    implicit val decoder: Decoder[SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner] = deriveEncoder
}
