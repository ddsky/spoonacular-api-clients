package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class GetWinePairing200ResponseProductMatchesInner {
    
    Integer id
    
    String title
    
    BigDecimal averageRating
    
    Object description = null
    
    String imageUrl
    
    String link
    
    String price
    
    Integer ratingCount
    
    BigDecimal score
}
