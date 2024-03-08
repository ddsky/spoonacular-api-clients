package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.AnalyzeARecipeSearchQuery200ResponseDishesInner
import org.openapitools.models.AnalyzeARecipeSearchQuery200ResponseIngredientsInner
import scala.collection.immutable.Seq

/**
 * 
 * @param dishes 
 * @param ingredients 
 * @param cuisines 
 * @param modifiers 
 */
case class AnalyzeARecipeSearchQuery200Response(dishes: Set[AnalyzeARecipeSearchQuery200ResponseDishesInner],
                ingredients: Set[AnalyzeARecipeSearchQuery200ResponseIngredientsInner],
                cuisines: Seq[String],
                modifiers: Seq[String]
                )

object AnalyzeARecipeSearchQuery200Response {
    /**
     * Creates the codec for converting AnalyzeARecipeSearchQuery200Response from and to JSON.
     */
    implicit val decoder: Decoder[AnalyzeARecipeSearchQuery200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[AnalyzeARecipeSearchQuery200Response] = deriveEncoder
}
