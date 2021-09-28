package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.InlineResponse20028Ingredients;
import com.spoonacular.client.model.InlineResponse20028Nutrition;
import com.spoonacular.client.model.InlineResponse20028Servings;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

@Canonical
class InlineResponse20028 {
    
    Integer id
    
    String title
    
    List<String> badges = new ArrayList<String>()
    
    List<String> importantBadges = new ArrayList<String>()
    
    List<String> breadcrumbs = new ArrayList<String>()
    
    String generatedText
    
    String imageType
    
    Integer ingredientCount
    
    String ingredientList
    
    List<InlineResponse20028Ingredients> ingredients = new ArrayList<InlineResponse20028Ingredients>()
    
    BigDecimal likes
    
    InlineResponse20028Nutrition nutrition = null
    
    BigDecimal price
    
    InlineResponse20028Servings servings = null
    
    BigDecimal spoonacularScore
}
