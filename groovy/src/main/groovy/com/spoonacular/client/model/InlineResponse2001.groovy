package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.RecipesFindByIngredientsMissedIngredients;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

@Canonical
class InlineResponse2001 {
    
    Integer id
    
    String image
    
    String imageType
    
    Integer likes
    
    Integer missedIngredientCount
    
    List<RecipesFindByIngredientsMissedIngredients> missedIngredients = new ArrayList<RecipesFindByIngredientsMissedIngredients>()
    
    String title
    
    List<Object> unusedIngredients = new ArrayList<Object>()
    
    BigDecimal usedIngredientCount
    
    List<RecipesFindByIngredientsMissedIngredients> usedIngredients = new ArrayList<RecipesFindByIngredientsMissedIngredients>()
    
    String 
}
