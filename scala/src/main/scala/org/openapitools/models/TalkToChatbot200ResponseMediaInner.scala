package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._

/**
 * 
 * @param title 
 * @param image 
 * @param link 
 */
case class TalkToChatbot200ResponseMediaInner(title: Option[String],
                image: Option[String],
                link: Option[String]
                )

object TalkToChatbot200ResponseMediaInner {
    /**
     * Creates the codec for converting TalkToChatbot200ResponseMediaInner from and to JSON.
     */
    implicit val decoder: Decoder[TalkToChatbot200ResponseMediaInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[TalkToChatbot200ResponseMediaInner] = deriveEncoder
}
