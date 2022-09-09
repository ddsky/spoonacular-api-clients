package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import scala.collection.immutable.Seq

/**
 * 
 * @param ingredients 
 */
case class ComputeGlycemicLoadRequest(ingredients: Seq[String]
                )

object ComputeGlycemicLoadRequest {
    /**
     * Creates the codec for converting ComputeGlycemicLoadRequest from and to JSON.
     */
    implicit val decoder: Decoder[ComputeGlycemicLoadRequest] = deriveDecoder
    implicit val encoder: ObjectEncoder[ComputeGlycemicLoadRequest] = deriveEncoder
}
