package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.InlineResponse20028Nutrition;
import com.spoonacular.client.model.InlineResponse20028Servings;
import com.spoonacular.client.model.InlineResponse20030Ingredients;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

@Canonical
class InlineResponse20030 {
    
    Integer id
    
    String title
    
    List<String> breadcrumbs = new ArrayList<String>()
    
    String imageType
    
    List<String> badges = new ArrayList<String>()
    
    List<String> importantBadges = new ArrayList<String>()
    
    Integer ingredientCount
    
    Object generatedText = null
    
    String ingredientList
    
    List<InlineResponse20030Ingredients> ingredients = new ArrayList<InlineResponse20030Ingredients>()
    
    BigDecimal likes
    
    String aisle
    
    InlineResponse20028Nutrition nutrition = null
    
    BigDecimal price
    
    InlineResponse20028Servings servings = null
    
    BigDecimal spoonacularScore
}
