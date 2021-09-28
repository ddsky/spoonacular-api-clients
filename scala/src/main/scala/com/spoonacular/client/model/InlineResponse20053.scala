package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.InlineResponse20053Videos
import scala.collection.immutable.Seq

/**
 * 
 * @param videos 
 * @param totalResults 
 */
case class InlineResponse20053(videos: Seq[InlineResponse20053Videos],
                totalResults: Int
                )

object InlineResponse20053 {
    /**
     * Creates the codec for converting InlineResponse20053 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20053] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20053] = deriveEncoder
}
