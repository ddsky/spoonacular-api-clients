package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.spoonacular.client.model.AddMealPlanTemplate200ResponseItemsInner
import scala.collection.immutable.Seq

/**
 * 
 * @param name 
 * @param items 
 * @param publishAsPublic 
 */
case class AddMealPlanTemplate200Response(name: String,
                items: Set[AddMealPlanTemplate200ResponseItemsInner],
                publishAsPublic: Boolean
                )

object AddMealPlanTemplate200Response {
    /**
     * Creates the codec for converting AddMealPlanTemplate200Response from and to JSON.
     */
    implicit val decoder: Decoder[AddMealPlanTemplate200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[AddMealPlanTemplate200Response] = deriveEncoder
}
