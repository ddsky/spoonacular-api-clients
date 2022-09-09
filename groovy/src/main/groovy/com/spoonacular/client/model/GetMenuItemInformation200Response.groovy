package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.SearchGroceryProductsByUPC200ResponseNutrition;
import com.spoonacular.client.model.SearchGroceryProductsByUPC200ResponseServings;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

@Canonical
class GetMenuItemInformation200Response {
    
    Integer id
    
    String title
    
    String restaurantChain
    
    SearchGroceryProductsByUPC200ResponseNutrition nutrition
    
    List<String> badges = new ArrayList<>()
    
    List<String> breadcrumbs = new ArrayList<>()
    
    String generatedText
    
    String imageType
    
    BigDecimal likes
    
    SearchGroceryProductsByUPC200ResponseServings servings
    
    BigDecimal price
    
    BigDecimal spoonacularScore
}
