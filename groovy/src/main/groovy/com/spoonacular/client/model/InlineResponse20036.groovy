package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.InlineResponse20028Nutrition;
import com.spoonacular.client.model.InlineResponse20028Servings;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

@Canonical
class InlineResponse20036 {
    
    Integer id
    
    String title
    
    String restaurantChain
    
    InlineResponse20028Nutrition nutrition = null
    
    List<String> badges = new ArrayList<String>()
    
    List<String> breadcrumbs = new ArrayList<String>()
    
    String generatedText
    
    String imageType
    
    BigDecimal likes
    
    InlineResponse20028Servings servings = null
    
    BigDecimal price
    
    BigDecimal spoonacularScore
}
