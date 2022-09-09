package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.spoonacular.client.model.GetComparableProducts200ResponseComparableProductsProteinInner
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
case class GetComparableProducts200ResponseComparableProducts(calories: Seq[Object],
                likes: Seq[Object],
                price: Seq[Object],
                protein: Set[GetComparableProducts200ResponseComparableProductsProteinInner],
                spoonacularScore: Set[GetComparableProducts200ResponseComparableProductsProteinInner],
                sugar: Seq[Object]
                )

object GetComparableProducts200ResponseComparableProducts {
    /**
     * Creates the codec for converting GetComparableProducts200ResponseComparableProducts from and to JSON.
     */
    implicit val decoder: Decoder[GetComparableProducts200ResponseComparableProducts] = deriveDecoder
    implicit val encoder: ObjectEncoder[GetComparableProducts200ResponseComparableProducts] = deriveEncoder
}
