package org.openapitools.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.LinkedHashSet;
import java.util.Set;
import org.openapitools.model.SearchSiteContent200ResponseArticlesInner;

@Canonical
class SearchSiteContent200Response {
    
    Set<SearchSiteContent200ResponseArticlesInner> articles = new LinkedHashSet<>()
    
    Set<SearchSiteContent200ResponseArticlesInner> groceryProducts = new LinkedHashSet<>()
    
    Set<SearchSiteContent200ResponseArticlesInner> menuItems = new LinkedHashSet<>()
    
    Set<SearchSiteContent200ResponseArticlesInner> recipes = new LinkedHashSet<>()
}
