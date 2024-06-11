package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.GetProductInformation200ResponseIngredientsInner;
import org.openapitools.model.SearchGroceryProductsByUPC200ResponseNutrition;
import org.openapitools.model.SearchGroceryProductsByUPC200ResponseServings;

@Canonical
class GetProductInformation200Response {
    
    Integer id
    
    String title
    
    List<String> breadcrumbs = new ArrayList<>()
    
    String imageType
    
    List<String> badges = new ArrayList<>()
    
    List<String> importantBadges = new ArrayList<>()
    
    Integer ingredientCount
    
    String generatedText
    
    String ingredientList
    
    List<GetProductInformation200ResponseIngredientsInner> ingredients = new ArrayList<>()
    
    BigDecimal likes
    
    String aisle
    
    SearchGroceryProductsByUPC200ResponseNutrition nutrition
    
    BigDecimal price
    
    SearchGroceryProductsByUPC200ResponseServings servings
    
    BigDecimal spoonacularScore
}
