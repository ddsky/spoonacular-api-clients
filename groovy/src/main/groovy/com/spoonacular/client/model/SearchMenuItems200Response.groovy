package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.spoonacular.client.model.SearchMenuItems200ResponseMenuItemsInner;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

@Canonical
class SearchMenuItems200Response {
    
    Set<SearchMenuItems200ResponseMenuItemsInner> menuItems = new LinkedHashSet<>()
    
    Integer totalMenuItems
    
    String type
    
    Integer offset
    
    Integer number
}
