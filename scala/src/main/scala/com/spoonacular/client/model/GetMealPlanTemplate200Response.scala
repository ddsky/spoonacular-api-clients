package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.spoonacular.client.model.GetMealPlanTemplate200ResponseDaysInner
import scala.collection.immutable.Seq

/**
 * 
 * @param id 
 * @param name 
 * @param days 
 */
case class GetMealPlanTemplate200Response(id: Int,
                name: String,
                days: Set[GetMealPlanTemplate200ResponseDaysInner]
                )

object GetMealPlanTemplate200Response {
    /**
     * Creates the codec for converting GetMealPlanTemplate200Response from and to JSON.
     */
    implicit val decoder: Decoder[GetMealPlanTemplate200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[GetMealPlanTemplate200Response] = deriveEncoder
}
