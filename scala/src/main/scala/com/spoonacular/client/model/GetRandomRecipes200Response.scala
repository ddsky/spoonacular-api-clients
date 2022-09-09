package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.spoonacular.client.model.GetRandomRecipes200ResponseRecipesInner
import scala.collection.immutable.Seq

/**
 * 
 * @param recipes 
 */
case class GetRandomRecipes200Response(recipes: Set[GetRandomRecipes200ResponseRecipesInner]
                )

object GetRandomRecipes200Response {
    /**
     * Creates the codec for converting GetRandomRecipes200Response from and to JSON.
     */
    implicit val decoder: Decoder[GetRandomRecipes200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[GetRandomRecipes200Response] = deriveEncoder
}
