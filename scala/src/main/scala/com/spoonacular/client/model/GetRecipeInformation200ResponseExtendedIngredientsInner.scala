package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.spoonacular.client.model.BigDecimal
import com.spoonacular.client.model.GetRecipeInformation200ResponseExtendedIngredientsInnerMeasures
import scala.collection.immutable.Seq

/**
 * 
 * @param aisle 
 * @param amount 
 * @param consitency 
 * @param id 
 * @param image 
 * @param measures 
 * @param meta 
 * @param name 
 * @param original 
 * @param originalName 
 * @param unit 
 */
case class GetRecipeInformation200ResponseExtendedIngredientsInner(aisle: String,
                amount: BigDecimal,
                consitency: String,
                id: Int,
                image: String,
                measures: Option[GetRecipeInformation200ResponseExtendedIngredientsInnerMeasures],
                meta: Option[Seq[String]],
                name: String,
                original: String,
                originalName: String,
                unit: String
                )

object GetRecipeInformation200ResponseExtendedIngredientsInner {
    /**
     * Creates the codec for converting GetRecipeInformation200ResponseExtendedIngredientsInner from and to JSON.
     */
    implicit val decoder: Decoder[GetRecipeInformation200ResponseExtendedIngredientsInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[GetRecipeInformation200ResponseExtendedIngredientsInner] = deriveEncoder
}
