package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import scala.collection.immutable.Seq

/**
 * 
 * @param cleanTitle 
 * @param image 
 * @param category 
 * @param breadcrumbs 
 * @param usdaCode 
 */
case class InlineResponse20033(cleanTitle: String,
                image: String,
                category: String,
                breadcrumbs: Seq[String],
                usdaCode: Int
                )

object InlineResponse20033 {
    /**
     * Creates the codec for converting InlineResponse20033 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20033] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20033] = deriveEncoder
}
