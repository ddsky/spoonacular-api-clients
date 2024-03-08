package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.AnyType
import scala.collection.immutable.Seq

/**
 * 
 * @param answerText 
 * @param media 
 */
case class TalkToChatbot200Response(answerText: String,
                media: Seq[AnyType]
                )

object TalkToChatbot200Response {
    /**
     * Creates the codec for converting TalkToChatbot200Response from and to JSON.
     */
    implicit val decoder: Decoder[TalkToChatbot200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[TalkToChatbot200Response] = deriveEncoder
}
