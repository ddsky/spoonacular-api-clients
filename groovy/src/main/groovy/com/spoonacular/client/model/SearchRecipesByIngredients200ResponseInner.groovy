package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.spoonacular.client.model.SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

@Canonical
class SearchRecipesByIngredients200ResponseInner {
    
    Integer id
    
    String image
    
    String imageType
    
    Integer likes
    
    Integer missedIngredientCount
    
    Set<SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner> missedIngredients = new LinkedHashSet<>()
    
    String title
    
    List<Object> unusedIngredients = new ArrayList<>()
    
    BigDecimal usedIngredientCount
    
    Set<SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner> usedIngredients = new LinkedHashSet<>()
}
