package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class SearchRestaurants200ResponseRestaurantsInnerLocalHours {
    
    SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational operational
    
    SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational delivery
    
    SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational pickup
    
    SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational dineIn
}
