package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import scala.collection.immutable.Seq

/**
 * 
 * @param title 
 * @param servings 
 * @param ingredients 
 * @param instructions 
 */
case class AnalyzeRecipeRequest(title: Option[String],
                servings: Option[Int],
                ingredients: Option[Seq[String]],
                instructions: Option[String]
                )

object AnalyzeRecipeRequest {
    /**
     * Creates the codec for converting AnalyzeRecipeRequest from and to JSON.
     */
    implicit val decoder: Decoder[AnalyzeRecipeRequest] = deriveDecoder
    implicit val encoder: ObjectEncoder[AnalyzeRecipeRequest] = deriveEncoder
}
