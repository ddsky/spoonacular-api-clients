package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.SearchGroceryProductsByUPC200ResponseServings;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class SearchMenuItems200ResponseMenuItemsInner {
    
    Integer id
    
    String title
    
    String restaurantChain
    
    String image
    
    String imageType
    
    SearchGroceryProductsByUPC200ResponseServings servings
}
