package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.spoonacular.client.model.BigDecimal
import com.spoonacular.client.model.GetIngredientInformation200ResponseNutrition
import com.spoonacular.client.model.ParseIngredients200ResponseInnerEstimatedCost
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
case class GetIngredientInformation200Response(id: Int,
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
                shoppingListUnits: Seq[String],
                aisle: String,
                image: String,
                meta: Seq[Object],
                nutrition: GetIngredientInformation200ResponseNutrition,
                categoryPath: Seq[String]
                )

object GetIngredientInformation200Response {
    /**
     * Creates the codec for converting GetIngredientInformation200Response from and to JSON.
     */
    implicit val decoder: Decoder[GetIngredientInformation200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[GetIngredientInformation200Response] = deriveEncoder
}
