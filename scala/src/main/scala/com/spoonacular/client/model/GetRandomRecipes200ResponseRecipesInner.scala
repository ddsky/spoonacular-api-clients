package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.spoonacular.client.model.BigDecimal
import com.spoonacular.client.model.GetRecipeInformation200ResponseExtendedIngredientsInner
import com.spoonacular.client.model.GetRecipeInformation200ResponseWinePairing
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
case class GetRandomRecipes200ResponseRecipesInner(id: Int,
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
                extendedIngredients: Option[Set[GetRecipeInformation200ResponseExtendedIngredientsInner]],
                summary: String,
                winePairing: Option[GetRecipeInformation200ResponseWinePairing]
                )

object GetRandomRecipes200ResponseRecipesInner {
    /**
     * Creates the codec for converting GetRandomRecipes200ResponseRecipesInner from and to JSON.
     */
    implicit val decoder: Decoder[GetRandomRecipes200ResponseRecipesInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[GetRandomRecipes200ResponseRecipesInner] = deriveEncoder
}
