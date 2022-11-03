package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import scala.collection.immutable.Seq

/**
 * 
 * @param title 
 * @param servings 
 * @param ingredients 
 * @param instructions 
 */
case class AnalyzeRecipeRequest1(title: Option[String],
                servings: Option[Int],
                ingredients: Option[Seq[String]],
                instructions: Option[String]
                )

object AnalyzeRecipeRequest1 {
    /**
     * Creates the codec for converting AnalyzeRecipeRequest1 from and to JSON.
     */
    implicit val decoder: Decoder[AnalyzeRecipeRequest1] = deriveDecoder
    implicit val encoder: ObjectEncoder[AnalyzeRecipeRequest1] = deriveEncoder
}
