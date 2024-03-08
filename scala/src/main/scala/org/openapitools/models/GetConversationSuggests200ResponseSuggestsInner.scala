package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._

/**
 * 
 * @param name 
 */
case class GetConversationSuggests200ResponseSuggestsInner(name: String
                )

object GetConversationSuggests200ResponseSuggestsInner {
    /**
     * Creates the codec for converting GetConversationSuggests200ResponseSuggestsInner from and to JSON.
     */
    implicit val decoder: Decoder[GetConversationSuggests200ResponseSuggestsInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[GetConversationSuggests200ResponseSuggestsInner] = deriveEncoder
}
