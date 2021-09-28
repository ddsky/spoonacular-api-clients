package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.RecipesFindByIngredientsMissedIngredients
import java.math.BigDecimal
import scala.collection.immutable.Seq

/**
 * 
 * @param id 
 * @param image 
 * @param imageType 
 * @param likes 
 * @param missedIngredientCount 
 * @param missedIngredients 
 * @param title 
 * @param unusedIngredients 
 * @param usedIngredientCount 
 * @param usedIngredients 
 * @param  
 */
case class InlineResponse2001(id: Int,
                image: String,
                imageType: String,
                likes: Int,
                missedIngredientCount: Int,
                missedIngredients: Seq[RecipesFindByIngredientsMissedIngredients],
                title: String,
                unusedIngredients: Seq[Object],
                usedIngredientCount: BigDecimal,
                usedIngredients: Seq[RecipesFindByIngredientsMissedIngredients],
                : Option[String]
                )

object InlineResponse2001 {
    /**
     * Creates the codec for converting InlineResponse2001 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse2001] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse2001] = deriveEncoder
}
