package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._

/**
 * 
 * @param image 
 * @param name 
 */
case class GetRecipeEquipmentByID200ResponseEquipmentInner(image: String,
                name: String
                )

object GetRecipeEquipmentByID200ResponseEquipmentInner {
    /**
     * Creates the codec for converting GetRecipeEquipmentByID200ResponseEquipmentInner from and to JSON.
     */
    implicit val decoder: Decoder[GetRecipeEquipmentByID200ResponseEquipmentInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[GetRecipeEquipmentByID200ResponseEquipmentInner] = deriveEncoder
}
