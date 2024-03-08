package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import scala.collection.immutable.Seq

/**
 * 
 * @param name 
 * @param image 
 * @param id 
 * @param aisle 
 * @param possibleUnits 
 */
case class AutocompleteIngredientSearch200ResponseInner(name: String,
                image: String,
                id: Option[Int],
                aisle: Option[String],
                possibleUnits: Option[Seq[String]]
                )

object AutocompleteIngredientSearch200ResponseInner {
    /**
     * Creates the codec for converting AutocompleteIngredientSearch200ResponseInner from and to JSON.
     */
    implicit val decoder: Decoder[AutocompleteIngredientSearch200ResponseInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[AutocompleteIngredientSearch200ResponseInner] = deriveEncoder
}
