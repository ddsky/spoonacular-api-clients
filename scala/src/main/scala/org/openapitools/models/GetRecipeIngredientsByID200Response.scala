package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.GetRecipeIngredientsByID200ResponseIngredientsInner

/**
 * 
 * @param ingredients 
 */
case class GetRecipeIngredientsByID200Response(ingredients: Set[GetRecipeIngredientsByID200ResponseIngredientsInner]
                )

object GetRecipeIngredientsByID200Response {
    /**
     * Creates the codec for converting GetRecipeIngredientsByID200Response from and to JSON.
     */
    implicit val decoder: Decoder[GetRecipeIngredientsByID200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[GetRecipeIngredientsByID200Response] = deriveEncoder
}
