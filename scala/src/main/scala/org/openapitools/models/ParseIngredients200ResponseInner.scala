package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.BigDecimal
import org.openapitools.models.ParseIngredients200ResponseInnerEstimatedCost
import org.openapitools.models.ParseIngredients200ResponseInnerNutrition
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
case class ParseIngredients200ResponseInner(id: Int,
                original: String,
                originalName: String,
                name: String,
                nameClean: String,
                amount: BigDecimal,
                unit: String,
                unitShort: String,
                unitLong: String,
                possibleUnits: Seq[String],
                estimatedCost: ParseIngredients200ResponseInnerEstimatedCost,
                consistency: String,
                aisle: String,
                image: String,
                meta: Seq[String],
                nutrition: ParseIngredients200ResponseInnerNutrition
                )

object ParseIngredients200ResponseInner {
    /**
     * Creates the codec for converting ParseIngredients200ResponseInner from and to JSON.
     */
    implicit val decoder: Decoder[ParseIngredients200ResponseInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[ParseIngredients200ResponseInner] = deriveEncoder
}
