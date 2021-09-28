package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.InlineResponse20022Nutrition
import com.spoonacular.client.model.RecipesParseIngredientsEstimatedCost
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
 * @param shoppingListUnits 
 * @param aisle 
 * @param image 
 * @param meta 
 * @param nutrition 
 * @param categoryPath 
 */
case class InlineResponse20022(id: Int,
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
                shoppingListUnits: Seq[String],
                aisle: String,
                image: String,
                meta: Seq[Object],
                nutrition: InlineResponse20022Nutrition,
                categoryPath: Seq[String]
                )

object InlineResponse20022 {
    /**
     * Creates the codec for converting InlineResponse20022 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20022] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20022] = deriveEncoder
}
