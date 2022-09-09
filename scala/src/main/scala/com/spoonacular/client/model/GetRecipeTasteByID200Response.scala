package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.spoonacular.client.model.BigDecimal

/**
 * 
 * @param sweetness 
 * @param saltiness 
 * @param sourness 
 * @param bitterness 
 * @param savoriness 
 * @param fattiness 
 * @param spiciness 
 */
case class GetRecipeTasteByID200Response(sweetness: BigDecimal,
                saltiness: BigDecimal,
                sourness: BigDecimal,
                bitterness: BigDecimal,
                savoriness: BigDecimal,
                fattiness: BigDecimal,
                spiciness: BigDecimal
                )

object GetRecipeTasteByID200Response {
    /**
     * Creates the codec for converting GetRecipeTasteByID200Response from and to JSON.
     */
    implicit val decoder: Decoder[GetRecipeTasteByID200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[GetRecipeTasteByID200Response] = deriveEncoder
}
