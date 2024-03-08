package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.BigDecimal
import org.openapitools.models.SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner
import scala.collection.immutable.Seq

/**
 * 
 * @param id 
 * @param image 
 * @param imageType 
 * @param likes 
 * @param missedIngredientCount 
 * @param missedIngredients 
 * @param title 
 * @param unusedIngredients 
 * @param usedIngredientCount 
 * @param usedIngredients 
 */
case class SearchRecipesByIngredients200ResponseInner(id: Int,
                image: String,
                imageType: String,
                likes: Int,
                missedIngredientCount: Int,
                missedIngredients: Set[SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner],
                title: String,
                unusedIngredients: Seq[Object],
                usedIngredientCount: BigDecimal,
                usedIngredients: Set[SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner]
                )

object SearchRecipesByIngredients200ResponseInner {
    /**
     * Creates the codec for converting SearchRecipesByIngredients200ResponseInner from and to JSON.
     */
    implicit val decoder: Decoder[SearchRecipesByIngredients200ResponseInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[SearchRecipesByIngredients200ResponseInner] = deriveEncoder
}
