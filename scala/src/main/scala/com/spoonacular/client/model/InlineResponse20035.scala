package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.InlineResponse20035MenuItems
import scala.collection.immutable.Seq

/**
 * 
 * @param menuItems 
 * @param totalMenuItems 
 * @param _type 
 * @param offset 
 * @param number 
 */
case class InlineResponse20035(menuItems: Seq[InlineResponse20035MenuItems],
                totalMenuItems: Int,
                _type: String,
                offset: Int,
                number: Int
                )

object InlineResponse20035 {
    /**
     * Creates the codec for converting InlineResponse20035 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20035] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20035] = deriveEncoder
}
