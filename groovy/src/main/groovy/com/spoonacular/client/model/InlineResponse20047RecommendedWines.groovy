package com.spoonacular.client.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;

@Canonical
class InlineResponse20047RecommendedWines {
    
    Integer id
    
    String title
    
    BigDecimal averageRating
    
    String description
    
    String imageUrl
    
    String link
    
    String price
    
    Integer ratingCount
    
    BigDecimal score
}
