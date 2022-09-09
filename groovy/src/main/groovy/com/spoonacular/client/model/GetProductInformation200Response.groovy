package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.GetProductInformation200ResponseIngredientsInner;
import com.spoonacular.client.model.SearchGroceryProductsByUPC200ResponseNutrition;
import com.spoonacular.client.model.SearchGroceryProductsByUPC200ResponseServings;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class GetProductInformation200Response {
    
    Integer id
    
    String title
    
    List<String> breadcrumbs = new ArrayList<>()
    
    String imageType
    
    List<String> badges = new ArrayList<>()
    
    List<String> importantBadges = new ArrayList<>()
    
    Integer ingredientCount
    
    Object generatedText = null
    
    String ingredientList
    
    List<GetProductInformation200ResponseIngredientsInner> ingredients = new ArrayList<>()
    
    BigDecimal likes
    
    String aisle
    
    SearchGroceryProductsByUPC200ResponseNutrition nutrition
    
    BigDecimal price
    
    SearchGroceryProductsByUPC200ResponseServings servings
    
    BigDecimal spoonacularScore
}
