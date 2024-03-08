package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.SearchGroceryProductsByUPC200ResponseServings;

@Canonical
class SearchMenuItems200ResponseMenuItemsInner {
    
    Integer id
    
    String title
    
    String restaurantChain
    
    String image
    
    String imageType
    
    SearchGroceryProductsByUPC200ResponseServings servings
}
