package com.spoonacular.client.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;

@Canonical
class SearchRestaurants200ResponseRestaurantsInnerAddress {
    
    String streetAddr
    
    String city
    
    String state
    
    String zipcode
    
    String country
    
    BigDecimal lat
    
    BigDecimal lon
    
    String streetAddr2
    
    BigDecimal latitude
    
    BigDecimal longitude
}
