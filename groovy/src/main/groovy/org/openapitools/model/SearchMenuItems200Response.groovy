package org.openapitools.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.LinkedHashSet;
import java.util.Set;
import org.openapitools.model.SearchMenuItems200ResponseMenuItemsInner;

@Canonical
class SearchMenuItems200Response {
    
    Set<SearchMenuItems200ResponseMenuItemsInner> menuItems = new LinkedHashSet<>()
    
    Integer totalMenuItems
    
    String type
    
    Integer offset
    
    Integer number
}
