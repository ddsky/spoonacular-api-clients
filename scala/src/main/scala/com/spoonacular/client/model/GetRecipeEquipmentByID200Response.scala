package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.spoonacular.client.model.GetRecipeEquipmentByID200ResponseEquipmentInner
import scala.collection.immutable.Seq

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
