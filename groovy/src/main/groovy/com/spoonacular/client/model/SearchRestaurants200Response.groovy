package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.SearchRestaurants200ResponseRestaurantsInner;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;

@Canonical
class SearchRestaurants200Response {
    
    List<SearchRestaurants200ResponseRestaurantsInner> restaurants = new ArrayList<>()
}
