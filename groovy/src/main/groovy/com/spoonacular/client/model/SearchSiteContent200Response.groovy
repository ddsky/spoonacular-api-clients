package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.spoonacular.client.model.SearchSiteContent200ResponseArticlesInner;
import com.spoonacular.client.model.SearchSiteContent200ResponseGroceryProductsInner;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

@Canonical
class SearchSiteContent200Response {
    
    Set<SearchSiteContent200ResponseArticlesInner> articles = new LinkedHashSet<>()
    
    Set<SearchSiteContent200ResponseGroceryProductsInner> groceryProducts = new LinkedHashSet<>()
    
    Set<SearchSiteContent200ResponseGroceryProductsInner> menuItems = new LinkedHashSet<>()
    
    Set<SearchSiteContent200ResponseGroceryProductsInner> recipes = new LinkedHashSet<>()
}
