package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.spoonacular.client.model.SearchSiteContent200ResponseGroceryProductsInnerDataPointsInner;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

@Canonical
class SearchSiteContent200ResponseGroceryProductsInner {
    
    Set<SearchSiteContent200ResponseGroceryProductsInnerDataPointsInner> dataPoints = new LinkedHashSet<>()
    
    String image
    
    String link
    
    String name
}
