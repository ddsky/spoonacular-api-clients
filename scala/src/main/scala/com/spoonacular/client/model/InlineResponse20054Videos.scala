package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import java.math.BigDecimal

/**
 * 
 * @param title 
 * @param length 
 * @param rating 
 * @param shortTitle 
 * @param thumbnail 
 * @param views 
 * @param youTubeId 
 */
case class InlineResponse20054Videos(title: String,
                length: Int,
                rating: BigDecimal,
                shortTitle: String,
                thumbnail: String,
                views: Int,
                youTubeId: String
                )

object InlineResponse20054Videos {
    /**
     * Creates the codec for converting InlineResponse20054Videos from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20054Videos] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20054Videos] = deriveEncoder
}
