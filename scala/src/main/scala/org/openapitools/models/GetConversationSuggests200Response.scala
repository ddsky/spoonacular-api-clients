package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.GetConversationSuggests200ResponseSuggests
import scala.collection.immutable.Seq

/**
 * 
 * @param suggests 
 * @param words 
 */
case class GetConversationSuggests200Response(suggests: GetConversationSuggests200ResponseSuggests,
                words: Seq[String]
                )

object GetConversationSuggests200Response {
    /**
     * Creates the codec for converting GetConversationSuggests200Response from and to JSON.
     */
    implicit val decoder: Decoder[GetConversationSuggests200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[GetConversationSuggests200Response] = deriveEncoder
}
