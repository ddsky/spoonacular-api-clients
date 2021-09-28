package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.RecipesParseIngredientsEstimatedCost
import com.spoonacular.client.model.RecipesParseIngredientsNutrition
import java.math.BigDecimal
import scala.collection.immutable.Seq

/**
 * 
 * @param id 
 * @param original 
 * @param originalName 
 * @param name 
 * @param nameClean 
 * @param amount 
 * @param unit 
 * @param unitShort 
 * @param unitLong 
 * @param possibleUnits 
 * @param estimatedCost 
 * @param consistency 
 * @param aisle 
 * @param image 
 * @param meta 
 * @param nutrition 
 */
case class InlineResponse20020(id: Int,
                original: String,
                originalName: String,
                name: String,
                nameClean: String,
                amount: BigDecimal,
                unit: String,
                unitShort: String,
                unitLong: String,
                possibleUnits: Seq[String],
                estimatedCost: RecipesParseIngredientsEstimatedCost,
                consistency: String,
                aisle: String,
                image: String,
                meta: Seq[String],
                nutrition: RecipesParseIngredientsNutrition
                )

object InlineResponse20020 {
    /**
     * Creates the codec for converting InlineResponse20020 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20020] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20020] = deriveEncoder
}
