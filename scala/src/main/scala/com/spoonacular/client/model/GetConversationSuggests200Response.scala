package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.spoonacular.client.model.AnyType
import com.spoonacular.client.model.GetConversationSuggests200ResponseSuggests
import scala.collection.immutable.Seq

/**
 * 
 * @param suggests 
 * @param words 
 */
case class GetConversationSuggests200Response(suggests: GetConversationSuggests200ResponseSuggests,
                words: Seq[AnyType]
                )

object GetConversationSuggests200Response {
    /**
     * Creates the codec for converting GetConversationSuggests200Response from and to JSON.
     */
    implicit val decoder: Decoder[GetConversationSuggests200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[GetConversationSuggests200Response] = deriveEncoder
}
