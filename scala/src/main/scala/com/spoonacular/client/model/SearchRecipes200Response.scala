package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.spoonacular.client.model.SearchRecipes200ResponseResultsInner
import scala.collection.immutable.Seq

/**
 * 
 * @param offset 
 * @param number 
 * @param results 
 * @param totalResults 
 */
case class SearchRecipes200Response(offset: Int,
                number: Int,
                results: Set[SearchRecipes200ResponseResultsInner],
                totalResults: Int
                )

object SearchRecipes200Response {
    /**
     * Creates the codec for converting SearchRecipes200Response from and to JSON.
     */
    implicit val decoder: Decoder[SearchRecipes200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[SearchRecipes200Response] = deriveEncoder
}
