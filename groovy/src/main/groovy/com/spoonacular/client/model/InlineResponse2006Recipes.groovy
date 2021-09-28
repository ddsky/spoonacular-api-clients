package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.InlineResponse2003ExtendedIngredients;
import com.spoonacular.client.model.InlineResponse2003WinePairing;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

@Canonical
class InlineResponse2006Recipes {
    
    Integer id
    
    String title
    
    String image
    
    String imageType
    
    BigDecimal servings
    
    Integer readyInMinutes
    
    String license
    
    String sourceName
    
    String sourceUrl
    
    String spoonacularSourceUrl
    
    BigDecimal aggregateLikes
    
    BigDecimal healthScore
    
    BigDecimal spoonacularScore
    
    BigDecimal pricePerServing
    
    List<Object> analyzedInstructions = new ArrayList<Object>()
    
    Boolean cheap
    
    String creditsText
    
    List<String> cuisines = new ArrayList<String>()
    
    Boolean dairyFree
    
    List<String> diets = new ArrayList<String>()
    
    String gaps
    
    Boolean glutenFree
    
    String instructions
    
    Boolean ketogenic
    
    Boolean lowFodmap
    
    List<String> occasions = new ArrayList<String>()
    
    Boolean sustainable
    
    Boolean vegan
    
    Boolean vegetarian
    
    Boolean veryHealthy
    
    Boolean veryPopular
    
    Boolean whole30
    
    BigDecimal weightWatcherSmartPoints
    
    List<String> dishTypes = new ArrayList<String>()
    
    List<InlineResponse2003ExtendedIngredients> extendedIngredients = new ArrayList<InlineResponse2003ExtendedIngredients>()
    
    String summary
    
    InlineResponse2003WinePairing winePairing = null
}
