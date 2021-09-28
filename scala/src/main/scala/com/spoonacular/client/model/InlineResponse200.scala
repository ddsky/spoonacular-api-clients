package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.InlineResponse200Results
import scala.collection.immutable.Seq

/**
 * 
 * @param offset 
 * @param number 
 * @param results 
 * @param totalResults 
 */
case class InlineResponse200(offset: Int,
                number: Int,
                results: Seq[InlineResponse200Results],
                totalResults: Int
                )

object InlineResponse200 {
    /**
     * Creates the codec for converting InlineResponse200 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse200] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse200] = deriveEncoder
}
