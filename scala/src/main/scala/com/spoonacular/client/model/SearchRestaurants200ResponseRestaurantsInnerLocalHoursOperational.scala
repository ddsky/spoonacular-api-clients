package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._

/**
 * 
 * @param Monday 
 * @param Tuesday 
 * @param Wednesday 
 * @param Thursday 
 * @param Friday 
 * @param Saturday 
 * @param Sunday 
 */
case class SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational(Monday: Option[String],
                Tuesday: Option[String],
                Wednesday: Option[String],
                Thursday: Option[String],
                Friday: Option[String],
                Saturday: Option[String],
                Sunday: Option[String]
                )

object SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational {
    /**
     * Creates the codec for converting SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational from and to JSON.
     */
    implicit val decoder: Decoder[SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational] = deriveDecoder
    implicit val encoder: ObjectEncoder[SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational] = deriveEncoder
}
