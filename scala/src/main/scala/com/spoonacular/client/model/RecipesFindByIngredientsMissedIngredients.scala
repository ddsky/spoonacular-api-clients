package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import java.math.BigDecimal
import scala.collection.immutable.Seq

/**
 * 
 * @param aisle 
 * @param amount 
 * @param id 
 * @param image 
 * @param meta 
 * @param name 
 * @param original 
 * @param originalName 
 * @param unit 
 * @param unitLong 
 * @param unitShort 
 */
case class RecipesFindByIngredientsMissedIngredients(aisle: String,
                amount: BigDecimal,
                id: Int,
                image: String,
                meta: Option[Seq[String]],
                name: String,
                original: String,
                originalName: String,
                unit: String,
                unitLong: String,
                unitShort: String
                )

object RecipesFindByIngredientsMissedIngredients {
    /**
     * Creates the codec for converting RecipesFindByIngredientsMissedIngredients from and to JSON.
     */
    implicit val decoder: Decoder[RecipesFindByIngredientsMissedIngredients] = deriveDecoder
    implicit val encoder: ObjectEncoder[RecipesFindByIngredientsMissedIngredients] = deriveEncoder
}
