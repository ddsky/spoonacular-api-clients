package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.InlineResponse2003ExtendedIngredients
import com.spoonacular.client.model.InlineResponse2003WinePairing
import java.math.BigDecimal
import scala.collection.immutable.Seq

/**
 * 
 * @param id 
 * @param title 
 * @param image 
 * @param imageType 
 * @param servings 
 * @param readyInMinutes 
 * @param license 
 * @param sourceName 
 * @param sourceUrl 
 * @param spoonacularSourceUrl 
 * @param aggregateLikes 
 * @param healthScore 
 * @param spoonacularScore 
 * @param pricePerServing 
 * @param analyzedInstructions 
 * @param cheap 
 * @param creditsText 
 * @param cuisines 
 * @param dairyFree 
 * @param diets 
 * @param gaps 
 * @param glutenFree 
 * @param instructions 
 * @param ketogenic 
 * @param lowFodmap 
 * @param occasions 
 * @param sustainable 
 * @param vegan 
 * @param vegetarian 
 * @param veryHealthy 
 * @param veryPopular 
 * @param whole30 
 * @param weightWatcherSmartPoints 
 * @param dishTypes 
 * @param extendedIngredients 
 * @param summary 
 * @param winePairing 
 */
case class InlineResponse2006Recipes(id: Int,
                title: String,
                image: String,
                imageType: String,
                servings: BigDecimal,
                readyInMinutes: Int,
                license: String,
                sourceName: String,
                sourceUrl: String,
                spoonacularSourceUrl: String,
                aggregateLikes: BigDecimal,
                healthScore: BigDecimal,
                spoonacularScore: BigDecimal,
                pricePerServing: BigDecimal,
                analyzedInstructions: Option[Seq[Object]],
                cheap: Boolean,
                creditsText: String,
                cuisines: Option[Seq[String]],
                dairyFree: Boolean,
                diets: Option[Seq[String]],
                gaps: String,
                glutenFree: Boolean,
                instructions: String,
                ketogenic: Boolean,
                lowFodmap: Boolean,
                occasions: Option[Seq[String]],
                sustainable: Boolean,
                vegan: Boolean,
                vegetarian: Boolean,
                veryHealthy: Boolean,
                veryPopular: Boolean,
                whole30: Boolean,
                weightWatcherSmartPoints: BigDecimal,
                dishTypes: Option[Seq[String]],
                extendedIngredients: Option[Seq[InlineResponse2003ExtendedIngredients]],
                summary: String,
                winePairing: Option[InlineResponse2003WinePairing]
                )

object InlineResponse2006Recipes {
    /**
     * Creates the codec for converting InlineResponse2006Recipes from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse2006Recipes] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse2006Recipes] = deriveEncoder
}
