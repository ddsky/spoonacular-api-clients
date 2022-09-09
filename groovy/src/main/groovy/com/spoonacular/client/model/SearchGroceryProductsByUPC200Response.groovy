package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.spoonacular.client.model.SearchGroceryProductsByUPC200ResponseIngredientsInner;
import com.spoonacular.client.model.SearchGroceryProductsByUPC200ResponseNutrition;
import com.spoonacular.client.model.SearchGroceryProductsByUPC200ResponseServings;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

@Canonical
class SearchGroceryProductsByUPC200Response {
    
    Integer id
    
    String title
    
    List<String> badges = new ArrayList<>()
    
    List<String> importantBadges = new ArrayList<>()
    
    List<String> breadcrumbs = new ArrayList<>()
    
    String generatedText
    
    String imageType
    
    Integer ingredientCount
    
    String ingredientList
    
    Set<SearchGroceryProductsByUPC200ResponseIngredientsInner> ingredients = new LinkedHashSet<>()
    
    BigDecimal likes
    
    SearchGroceryProductsByUPC200ResponseNutrition nutrition
    
    BigDecimal price
    
    SearchGroceryProductsByUPC200ResponseServings servings
    
    BigDecimal spoonacularScore
}
