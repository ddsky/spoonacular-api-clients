package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.InlineResponse20028Servings

/**
 * 
 * @param id 
 * @param title 
 * @param restaurantChain 
 * @param image 
 * @param imageType 
 * @param servings 
 */
case class InlineResponse20035MenuItems(id: Int,
                title: String,
                restaurantChain: String,
                image: String,
                imageType: String,
                servings: Option[InlineResponse20028Servings]
                )

object InlineResponse20035MenuItems {
    /**
     * Creates the codec for converting InlineResponse20035MenuItems from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20035MenuItems] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20035MenuItems] = deriveEncoder
}
