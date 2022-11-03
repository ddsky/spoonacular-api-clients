package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.spoonacular.client.model.BigDecimal
import com.spoonacular.client.model.SearchRestaurants200ResponseRestaurantsInnerAddress
import com.spoonacular.client.model.SearchRestaurants200ResponseRestaurantsInnerLocalHours
import scala.collection.immutable.Seq

/**
 * 
 * @param Underscoreid 
 * @param name 
 * @param phoneUnderscorenumber 
 * @param address 
 * @param _type 
 * @param description 
 * @param localUnderscorehours 
 * @param cuisines 
 * @param foodUnderscorephotos 
 * @param logoUnderscorephotos 
 * @param storeUnderscorephotos 
 * @param dollarUnderscoresigns 
 * @param pickupUnderscoreenabled 
 * @param deliveryUnderscoreenabled 
 * @param isUnderscoreopen 
 * @param offersUnderscorefirstUnderscorepartyUnderscoredelivery 
 * @param offersUnderscorethirdUnderscorepartyUnderscoredelivery 
 * @param miles 
 * @param weightedUnderscoreratingUnderscorevalue 
 * @param aggregatedUnderscoreratingUnderscorecount 
 */
case class SearchRestaurants200ResponseRestaurantsInner(Underscoreid: Option[String],
                name: Option[String],
                phoneUnderscorenumber: Option[Int],
                address: Option[SearchRestaurants200ResponseRestaurantsInnerAddress],
                _type: Option[String],
                description: Option[String],
                localUnderscorehours: Option[SearchRestaurants200ResponseRestaurantsInnerLocalHours],
                cuisines: Option[Seq[String]],
                foodUnderscorephotos: Option[Seq[String]],
                logoUnderscorephotos: Option[Seq[String]],
                storeUnderscorephotos: Option[Seq[Object]],
                dollarUnderscoresigns: Option[Int],
                pickupUnderscoreenabled: Option[Boolean],
                deliveryUnderscoreenabled: Option[Boolean],
                isUnderscoreopen: Option[Boolean],
                offersUnderscorefirstUnderscorepartyUnderscoredelivery: Option[Boolean],
                offersUnderscorethirdUnderscorepartyUnderscoredelivery: Option[Boolean],
                miles: Option[BigDecimal],
                weightedUnderscoreratingUnderscorevalue: Option[BigDecimal],
                aggregatedUnderscoreratingUnderscorecount: Option[Int]
                )

object SearchRestaurants200ResponseRestaurantsInner {
    /**
     * Creates the codec for converting SearchRestaurants200ResponseRestaurantsInner from and to JSON.
     */
    implicit val decoder: Decoder[SearchRestaurants200ResponseRestaurantsInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[SearchRestaurants200ResponseRestaurantsInner] = deriveEncoder
}
