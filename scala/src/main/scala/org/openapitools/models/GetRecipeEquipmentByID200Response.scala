package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import org.openapitools.models.GetRecipeEquipmentByID200ResponseEquipmentInner

/**
 * 
 * @param equipment 
 */
case class GetRecipeEquipmentByID200Response(equipment: Set[GetRecipeEquipmentByID200ResponseEquipmentInner]
                )

object GetRecipeEquipmentByID200Response {
    /**
     * Creates the codec for converting GetRecipeEquipmentByID200Response from and to JSON.
     */
    implicit val decoder: Decoder[GetRecipeEquipmentByID200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[GetRecipeEquipmentByID200Response] = deriveEncoder
}
