package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.BigDecimal

/**
 * 
 * @param streetUnderscoreaddr 
 * @param city 
 * @param state 
 * @param zipcode 
 * @param country 
 * @param lat 
 * @param lon 
 * @param streetUnderscoreaddrUnderscore2 
 * @param latitude 
 * @param longitude 
 */
case class SearchRestaurants200ResponseRestaurantsInnerAddress(streetUnderscoreaddr: Option[String],
                city: Option[String],
                state: Option[String],
                zipcode: Option[String],
                country: Option[String],
                lat: Option[BigDecimal],
                lon: Option[BigDecimal],
                streetUnderscoreaddrUnderscore2: Option[String],
                latitude: Option[BigDecimal],
                longitude: Option[BigDecimal]
                )

object SearchRestaurants200ResponseRestaurantsInnerAddress {
    /**
     * Creates the codec for converting SearchRestaurants200ResponseRestaurantsInnerAddress from and to JSON.
     */
    implicit val decoder: Decoder[SearchRestaurants200ResponseRestaurantsInnerAddress] = deriveDecoder
    implicit val encoder: ObjectEncoder[SearchRestaurants200ResponseRestaurantsInnerAddress] = deriveEncoder
}
