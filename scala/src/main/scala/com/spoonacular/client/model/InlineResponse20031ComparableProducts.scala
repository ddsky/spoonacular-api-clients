package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import com.spoonacular.client.model.InlineResponse20031ComparableProductsProtein
import scala.collection.immutable.Seq

/**
 * 
 * @param calories 
 * @param likes 
 * @param price 
 * @param protein 
 * @param spoonacularScore 
 * @param sugar 
 */
case class InlineResponse20031ComparableProducts(calories: Seq[Object],
                likes: Seq[Object],
                price: Seq[Object],
                protein: Seq[InlineResponse20031ComparableProductsProtein],
                spoonacularScore: Seq[InlineResponse20031ComparableProductsProtein],
                sugar: Seq[Object]
                )

object InlineResponse20031ComparableProducts {
    /**
     * Creates the codec for converting InlineResponse20031ComparableProducts from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20031ComparableProducts] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20031ComparableProducts] = deriveEncoder
}
