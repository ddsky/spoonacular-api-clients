package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.SearchRestaurants200ResponseRestaurantsInner
import scala.collection.immutable.Seq

/**
 * 
 * @param restaurants 
 */
case class SearchRestaurants200Response(restaurants: Option[Seq[SearchRestaurants200ResponseRestaurantsInner]]
                )

object SearchRestaurants200Response {
    /**
     * Creates the codec for converting SearchRestaurants200Response from and to JSON.
     */
    implicit val decoder: Decoder[SearchRestaurants200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[SearchRestaurants200Response] = deriveEncoder
}
