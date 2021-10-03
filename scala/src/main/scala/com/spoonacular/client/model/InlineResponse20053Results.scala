package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import java.math.BigDecimal

/**
 * 
 * @param id 
 * @param name 
 * @param image 
 * @param link 
 * @param _type 
 * @param relevance 
 * @param content 
 */
case class InlineResponse20053Results(id: String,
                name: String,
                image: String,
                link: String,
                _type: String,
                relevance: BigDecimal,
                content: String
                )

object InlineResponse20053Results {
    /**
     * Creates the codec for converting InlineResponse20053Results from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20053Results] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20053Results] = deriveEncoder
}
