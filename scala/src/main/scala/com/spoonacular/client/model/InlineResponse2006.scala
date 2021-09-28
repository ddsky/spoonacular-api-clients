package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.InlineResponse2006Recipes
import scala.collection.immutable.Seq

/**
 * 
 * @param recipes 
 */
case class InlineResponse2006(recipes: Seq[InlineResponse2006Recipes]
                )

object InlineResponse2006 {
    /**
     * Creates the codec for converting InlineResponse2006 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse2006] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse2006] = deriveEncoder
}
