package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.InlineResponse20040Value

/**
 * 
 * @param id 
 * @param slot 
 * @param position 
 * @param _type 
 * @param value 
 */
case class InlineResponse20040Items(id: Int,
                slot: Int,
                position: Int,
                _type: String,
                value: Option[InlineResponse20040Value]
                )

object InlineResponse20040Items {
    /**
     * Creates the codec for converting InlineResponse20040Items from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20040Items] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20040Items] = deriveEncoder
}
