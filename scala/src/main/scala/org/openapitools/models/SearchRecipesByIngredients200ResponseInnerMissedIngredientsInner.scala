package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.BigDecimal
import scala.collection.immutable.Seq

/**
 * 
 * @param aisle 
 * @param amount 
 * @param id 
 * @param image 
 * @param meta 
 * @param name 
 * @param extendedName 
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
                extendedName: Option[String],
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
