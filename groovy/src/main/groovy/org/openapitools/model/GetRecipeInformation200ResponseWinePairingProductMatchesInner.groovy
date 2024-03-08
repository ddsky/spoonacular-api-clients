package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;

@Canonical
class GetRecipeInformation200ResponseWinePairingProductMatchesInner {
    
    Integer id
    
    String title
    
    String description
    
    String price
    
    String imageUrl
    
    BigDecimal averageRating
    
    Integer ratingCount
    
    BigDecimal score
    
    String link
}
