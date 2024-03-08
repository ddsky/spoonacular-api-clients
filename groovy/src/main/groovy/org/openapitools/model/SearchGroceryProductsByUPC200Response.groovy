package org.openapitools.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashSet;
import java.util.Set;
import org.openapitools.model.SearchGroceryProductsByUPC200ResponseIngredientsInner;
import org.openapitools.model.SearchGroceryProductsByUPC200ResponseNutrition;
import org.openapitools.model.SearchGroceryProductsByUPC200ResponseServings;

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
