package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.spoonacular.client.model.GetConversationSuggests200ResponseSuggestsInner
import scala.collection.immutable.Seq

/**
 * 
 * @param Underscore 
 */
case class GetConversationSuggests200ResponseSuggests(Underscore: Set[GetConversationSuggests200ResponseSuggestsInner]
                )

object GetConversationSuggests200ResponseSuggests {
    /**
     * Creates the codec for converting GetConversationSuggests200ResponseSuggests from and to JSON.
     */
    implicit val decoder: Decoder[GetConversationSuggests200ResponseSuggests] = deriveDecoder
    implicit val encoder: ObjectEncoder[GetConversationSuggests200ResponseSuggests] = deriveEncoder
}
