package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._

/**
 * 
 * @param instructions The recipe's instructions.
 * @param view How to visualize the equipment, either \"grid\" or \"list\".
 * @param defaultCss Whether the default CSS should be added to the response.
 * @param showBacklink Whether to show a backlink to spoonacular. If set false, this call counts against your quota.
 */
case class InlineObject3(instructions: String,
                view: Option[String],
                defaultCss: Option[Boolean],
                showBacklink: Option[Boolean]
                )

object InlineObject3 {
    /**
     * Creates the codec for converting InlineObject3 from and to JSON.
     */
    implicit val decoder: Decoder[InlineObject3] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineObject3] = deriveEncoder
}
