package org.openapitools.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashSet;
import java.util.Set;
import org.openapitools.model.MapIngredientsToGroceryProducts200ResponseInnerProductsInner;

@Canonical
class MapIngredientsToGroceryProducts200ResponseInner {
    
    String original
    
    String originalName
    
    String ingredientImage
    
    List<String> meta = new ArrayList<>()
    
    Set<MapIngredientsToGroceryProducts200ResponseInnerProductsInner> products = new LinkedHashSet<>()
}
