package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.spoonacular.client.model.MapIngredientsToGroceryProducts200ResponseInnerProductsInner;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

@Canonical
class MapIngredientsToGroceryProducts200ResponseInner {
    
    String original
    
    String originalName
    
    String ingredientImage
    
    List<String> meta = new ArrayList<>()
    
    Set<MapIngredientsToGroceryProducts200ResponseInnerProductsInner> products = new LinkedHashSet<>()
}
