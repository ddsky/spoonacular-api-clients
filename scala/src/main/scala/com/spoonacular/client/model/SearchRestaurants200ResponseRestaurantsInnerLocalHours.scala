package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.spoonacular.client.model.SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational

/**
 * 
 * @param operational 
 * @param delivery 
 * @param pickup 
 * @param dineUnderscorein 
 */
case class SearchRestaurants200ResponseRestaurantsInnerLocalHours(operational: Option[SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational],
                delivery: Option[SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational],
                pickup: Option[SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational],
                dineUnderscorein: Option[SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational]
                )

object SearchRestaurants200ResponseRestaurantsInnerLocalHours {
    /**
     * Creates the codec for converting SearchRestaurants200ResponseRestaurantsInnerLocalHours from and to JSON.
     */
    implicit val decoder: Decoder[SearchRestaurants200ResponseRestaurantsInnerLocalHours] = deriveDecoder
    implicit val encoder: ObjectEncoder[SearchRestaurants200ResponseRestaurantsInnerLocalHours] = deriveEncoder
}
