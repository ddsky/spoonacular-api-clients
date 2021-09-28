package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.InlineResponse20038Value

/**
 * 
 * @param id 
 * @param slot 
 * @param position 
 * @param _type 
 * @param value 
 */
case class InlineResponse20038Items(id: Int,
                slot: Int,
                position: Int,
                _type: String,
                value: Option[InlineResponse20038Value]
                )

object InlineResponse20038Items {
    /**
     * Creates the codec for converting InlineResponse20038Items from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20038Items] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20038Items] = deriveEncoder
}
