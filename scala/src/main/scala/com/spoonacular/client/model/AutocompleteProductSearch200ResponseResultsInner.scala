package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._

/**
 * 
 * @param id 
 * @param title 
 */
case class AutocompleteProductSearch200ResponseResultsInner(id: Int,
                title: String
                )

object AutocompleteProductSearch200ResponseResultsInner {
    /**
     * Creates the codec for converting AutocompleteProductSearch200ResponseResultsInner from and to JSON.
     */
    implicit val decoder: Decoder[AutocompleteProductSearch200ResponseResultsInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[AutocompleteProductSearch200ResponseResultsInner] = deriveEncoder
}
