package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.InlineResponse2003Measures
import java.math.BigDecimal
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
case class InlineResponse2003ExtendedIngredients(aisle: String,
                amount: BigDecimal,
                consitency: String,
                id: Int,
                image: String,
                measures: Option[InlineResponse2003Measures],
                meta: Option[Seq[String]],
                name: String,
                original: String,
                originalName: String,
                unit: String
                )

object InlineResponse2003ExtendedIngredients {
    /**
     * Creates the codec for converting InlineResponse2003ExtendedIngredients from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse2003ExtendedIngredients] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse2003ExtendedIngredients] = deriveEncoder
}
