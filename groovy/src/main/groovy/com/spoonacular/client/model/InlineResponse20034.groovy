package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.FoodIngredientsMapProducts;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;

@Canonical
class InlineResponse20034 {
    
    String original
    
    String originalName
    
    String ingredientImage
    
    List<String> meta = new ArrayList<String>()
    
    List<FoodIngredientsMapProducts> products = new ArrayList<FoodIngredientsMapProducts>()
}
