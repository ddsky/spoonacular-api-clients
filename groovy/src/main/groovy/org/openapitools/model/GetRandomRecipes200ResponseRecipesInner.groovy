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
import org.openapitools.model.GetRecipeInformation200ResponseExtendedIngredientsInner;
import org.openapitools.model.GetRecipeInformation200ResponseWinePairing;

@Canonical
class GetRandomRecipes200ResponseRecipesInner {
    
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
    
    List<Object> analyzedInstructions
    
    Boolean cheap
    
    String creditsText
    
    List<String> cuisines
    
    Boolean dairyFree
    
    List<String> diets
    
    String gaps
    
    Boolean glutenFree
    
    String instructions
    
    Boolean ketogenic
    
    Boolean lowFodmap
    
    List<String> occasions
    
    Boolean sustainable
    
    Boolean vegan
    
    Boolean vegetarian
    
    Boolean veryHealthy
    
    Boolean veryPopular
    
    Boolean whole30
    
    BigDecimal weightWatcherSmartPoints
    
    List<String> dishTypes
    
    Set<GetRecipeInformation200ResponseExtendedIngredientsInner> extendedIngredients
    
    String summary
    
    GetRecipeInformation200ResponseWinePairing winePairing
}
