package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.InlineResponse20054Videos
import scala.collection.immutable.Seq

/**
 * 
 * @param videos 
 * @param totalResults 
 */
case class InlineResponse20054(videos: Seq[InlineResponse20054Videos],
                totalResults: Int
                )

object InlineResponse20054 {
    /**
     * Creates the codec for converting InlineResponse20054 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20054] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20054] = deriveEncoder
}
