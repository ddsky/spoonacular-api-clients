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
 * @param dataPoints 
 * @param image 
 * @param link 
 * @param name 
 */
case class SearchSiteContent200ResponseArticlesInner(dataPoints: Option[Seq[AnyType]],
                image: String,
                link: String,
                name: String
                )

object SearchSiteContent200ResponseArticlesInner {
    /**
     * Creates the codec for converting SearchSiteContent200ResponseArticlesInner from and to JSON.
     */
    implicit val decoder: Decoder[SearchSiteContent200ResponseArticlesInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[SearchSiteContent200ResponseArticlesInner] = deriveEncoder
}
