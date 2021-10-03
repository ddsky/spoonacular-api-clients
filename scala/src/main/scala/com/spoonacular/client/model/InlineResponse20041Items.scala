package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.InlineResponse20041Value

/**
 * 
 * @param id 
 * @param slot 
 * @param position 
 * @param _type 
 * @param value 
 */
case class InlineResponse20041Items(id: Int,
                slot: Int,
                position: Int,
                _type: String,
                value: Option[InlineResponse20041Value]
                )

object InlineResponse20041Items {
    /**
     * Creates the codec for converting InlineResponse20041Items from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20041Items] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20041Items] = deriveEncoder
}
